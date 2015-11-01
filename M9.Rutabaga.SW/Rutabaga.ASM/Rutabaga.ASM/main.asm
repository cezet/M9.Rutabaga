/*
 * Main.asm
 *
 *  Created: 2015-06-21 11:10:58
 *   Author: czoper
 */ 


.EQU digit_0 = 3
.EQU digit_1 = 4
.def status_reg = R24
.EQU blink_on = 6
.EQU auto_mode = 0
.EQU set_on_temp_mode = 1
.EQU set_max_temp_mode = 2
.EQU set_hist_mode = 3

.def on_temp = R1
.def max_temp = R2
.def histeresis = R3
.def ds18_temp = R4

 .CSEG
.ORG 0x0000
rjmp Reset

.ORG 0x000D 
rjmp TIMER0_COMPA ; Timer0 Compare A Handler

RESET:
	cli
	ldi		R16, RAMEND
	out		SPL, R16
	
	;all port B pins as outputs for 7 led display
	ldi		R16, 0xFF
	out		DDRB, R16

	; PD3 & PD4 7 led disp anodes outputs, PD2 LED ind output
	ldi		R16, (1<<PD3) | (1<<PD4) | (1<<PD2)
	out		DDRD, R16

	;ldi		R16, 0x99
	;out		PORTB, R16


	; Timer 0 settings
	; CTC mode
	ldi		R16, (1<<WGM01)
	out		TCCR0A, R16

	;compare clear value
	ldi		R16, 179
	out		OCR0A, R16

	; 1/1024 prscaler
	ldi		R16,(1<<CS00)
	out		TCCR0B, R16
	
	;compare match interrupt enable
	ldi		R16,(1<<OCIE0A)
	out		TIMSK, R16

	;drugi tajmer


	
	ldi		R16, high(1952)
	out		OCR1AH, R16
	ldi		R16, low(1952)
	out		OCR1AL, R16

	ldi		R16,(1<<CS10) | (1<<CS12) | (1<<WGM12)
	out		TCCR1B, R16

	


	;s1 s2 button

	ldi		R16, (1<<PD0) | (1<<PD1)
	out		PORTD, R16
	
	
	
	sei

MAIN:

/***** check mode *****/

	sbrc	status_reg,0
	rjmp	status_check_auto

status_check_man:
	;switch on diode on pd2
	cbi		PORTD, PD2
	rjmp	status_check_end

status_check_auto:
	sbi		PORTD,PD2

status_check_end:

;button s1
	
BUTTON1_START:	
	sbic	PIND, PIND0
	rjmp	BUTTON1_END
	sbr		status_reg,1	
BUTTON1_END:
		
	

BUTTON2_START:	
	sbic	PIND, PIND1
	rjmp	BUTTON2_END
	cbr		status_reg,1	
BUTTON2_END:
		


	in		R16, TIFR
;	sbrs	R16, OCF1A 
;	rjmp

	ldi		R16, 44
	ldi		R17, 10
	

	rcall div8s
	
	ldi		ZL, LOW(LED_Table*2)
	ldi		ZH, HIGH(LED_Table*2)
	add		ZL, R16
	clr		R16
	adc		ZH, R16

	lpm R1, Z

	ldi		ZL, LOW(LED_Table*2)
	ldi		ZH, HIGH(LED_Table*2)
	add		ZL, R15
	clr		R15
	adc		ZH, R15
	lpm		R0, Z

	rjmp MAIN


TIMER0_COMPA:



digit0:

	sbis	PORTD,digit_0
	rjmp	digit1

	in		R20, PORTD
	sbr		R20,(1<<digit_1)
	out		PORTD, R20
	out		PORTB, R0
	in		R20, PORTD
	cbr		R20,(1<<digit_0)
	out		PORTD, R20

	rjmp led_end

digit1:

	in		R20, PORTD
	sbr		R20, (1<<digit_0)
	out		PORTD, R20
	out		PORTB, R1
	in		R20, PORTD
	cbr		R20,(1<<digit_1)
	out		PORTD, R20

led_end:




reti

LED_Table:
.db 0xC0, 0xF9
.db 0xA4, 0xB0
.db 0x99, 0x92
.db 0x82, 0xD8
.db 0x80, 0x90

.INCLUDE "divlib.inc"

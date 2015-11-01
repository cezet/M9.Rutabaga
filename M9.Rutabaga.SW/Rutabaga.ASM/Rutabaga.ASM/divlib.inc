/*
 * divlib.asm
 *
 *  Created: 2015-08-04 12:49:17
 *   Author: czoper
 */ 

 ;***************************************************************************
;*
;* "div8s" - 8/8 Bit Signed Division
;*
;* This subroutine divides the two register variables "dd8s" (dividend) and 
;* "dv8s" (divisor). The result is placed in "dres8s" and the remainder in
;* "drem8s".
;*  
;* Number of words	:22
;* Number of cycles	:103
;* Low registers used	:2 (d8s,drem8s)
;* High registers used  :3 (dres8s/dd8s,dv8s,dcnt8s)
;*
;***************************************************************************

;***** Subroutine Register Variables

.def	d8s	=r14		;sign register
.def	drem8s	=r15		;remainder
.def	dres8s	=r16		;result
.def	dd8s	=r16		;dividend
.def	dv8s	=r17		;divisor
.def	dcnt8s	=r18		;loop counter

;***** Code

div8s:	mov	d8s,dd8s	;move dividend to sign register
	eor	d8s,dv8s	;xor sign with divisor
	sbrc	dv8s,7		;if MSB of divisor set
	neg	dv8s		;    change sign of divisor
	sbrc	dd8s,7		;if MSB of dividend set
	neg	dd8s		;    change sign of divisor
	sub	drem8s,drem8s	;clear remainder and carry
	ldi	dcnt8s,9	;init loop counter
d8s_1:	rol	dd8s		;shift left dividend
	dec	dcnt8s		;decrement counter
	brne	d8s_2		;if done
	sbrc	d8s,7		;    if MSB of sign register set
	neg	dres8s		;        change sign of result
	
	ret			;    return
d8s_2:	rol	drem8s		;shift dividend into remainder
	sub	drem8s,dv8s	;remainder = remainder - divisor
	brcc	d8s_3		;if result negative
	add	drem8s,dv8s	;    restore remainder
	clc			;    clear carry to be shifted into result			
	rjmp	d8s_1		;else
d8s_3:	sec			;    set carry to be shifted into result
	rjmp	d8s_1


.undef	d8s
.undef	drem8s
.undef	dres8s
.undef	dd8s
.undef	dv8s
.undef	dcnt8s

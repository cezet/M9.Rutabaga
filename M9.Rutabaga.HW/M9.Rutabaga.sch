EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY2313A-P IC?
U 1 1 558679DE
P 3600 4200
F 0 "IC?" H 2750 5150 60  0000 C CNN
F 1 "ATTINY2313A-P" H 4400 3350 60  0000 C CNN
F 2 "DIP20" H 2600 3350 60  0001 C CNN
F 3 "" H 3600 4200 60  0000 C CNN
	1    3600 4200
	1    0    0    -1  
$EndComp
$Comp
L DPST SW?
U 1 1 55867A4C
P 10050 1200
F 0 "SW?" H 10050 1300 70  0000 C CNN
F 1 "DPST" H 10050 1100 70  0000 C CNN
F 2 "" H 10050 1200 60  0000 C CNN
F 3 "" H 10050 1200 60  0000 C CNN
	1    10050 1200
	1    0    0    -1  
$EndComp
$Comp
L DPST SW?
U 1 1 55867ABD
P 10000 2350
F 0 "SW?" H 10000 2450 70  0000 C CNN
F 1 "DPST" H 10000 2250 70  0000 C CNN
F 2 "" H 10000 2350 60  0000 C CNN
F 3 "" H 10000 2350 60  0000 C CNN
	1    10000 2350
	1    0    0    -1  
$EndComp
$Comp
L DPST SW?
U 1 1 55867B21
P 1450 3600
F 0 "SW?" H 1450 3700 70  0000 C CNN
F 1 "DPST" H 1450 3500 70  0000 C CNN
F 2 "" H 1450 3600 60  0000 C CNN
F 3 "" H 1450 3600 60  0000 C CNN
	1    1450 3600
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 55867B7E
P 8100 2250
F 0 "D?" H 8100 2350 50  0000 C CNN
F 1 "LED" H 8100 2150 50  0000 C CNN
F 2 "" H 8100 2250 60  0000 C CNN
F 3 "" H 8100 2250 60  0000 C CNN
	1    8100 2250
	0    1    1    0   
$EndComp
$Comp
L LED D?
U 1 1 55867CA6
P 8650 2250
F 0 "D?" H 8650 2350 50  0000 C CNN
F 1 "LED" H 8650 2150 50  0000 C CNN
F 2 "" H 8650 2250 60  0000 C CNN
F 3 "" H 8650 2250 60  0000 C CNN
	1    8650 2250
	0    1    1    0   
$EndComp
$Comp
L DA04-11 AFF?
U 1 1 55867CCB
P 9400 4400
F 0 "AFF?" H 9400 4900 60  0000 C CNN
F 1 "DA04-11" H 9400 3950 60  0000 C CNN
F 2 "" H 9400 4400 60  0000 C CNN
F 3 "" H 9400 4400 60  0000 C CNN
	1    9400 4400
	1    0    0    -1  
$EndComp
$Comp
L TRANSFO T?
U 1 1 55867D4B
P 2100 900
F 0 "T?" H 2100 1150 70  0000 C CNN
F 1 "TRANSFO" H 2100 600 70  0000 C CNN
F 2 "" H 2100 900 60  0000 C CNN
F 3 "" H 2100 900 60  0000 C CNN
	1    2100 900 
	1    0    0    -1  
$EndComp
$Comp
L BRIDGE D?
U 1 1 55867DE6
P 4200 1550
F 0 "D?" H 4200 1600 70  0000 C CNN
F 1 "BRIDGE" H 4200 1500 70  0000 C CNN
F 2 "" H 4200 1550 60  0000 C CNN
F 3 "" H 4200 1550 60  0000 C CNN
	1    4200 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 55867E56
P 750 800
F 0 "P?" V 700 800 40  0000 C CNN
F 1 "CONN_2" V 800 800 40  0000 C CNN
F 2 "" H 750 800 60  0000 C CNN
F 3 "" H 750 800 60  0000 C CNN
	1    750  800 
	-1   0    0    1   
$EndComp
$Comp
L 7805 U?
U 1 1 55867FCD
P 6150 850
F 0 "U?" H 6300 654 60  0000 C CNN
F 1 "7805" H 6150 1050 60  0000 C CNN
F 2 "" H 6150 850 60  0000 C CNN
F 3 "" H 6150 850 60  0000 C CNN
	1    6150 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 700  2500 700 
Wire Wire Line
	2500 1100 2500 2500
Wire Wire Line
	2500 2500 4200 2500
Wire Wire Line
	4200 2500 4200 2400
Wire Wire Line
	3350 1550 3250 1550
Wire Wire Line
	3250 1550 3250 1750
$Comp
L GND #PWR?
U 1 1 55868518
P 3250 1750
F 0 "#PWR?" H 3250 1750 30  0001 C CNN
F 1 "GND" H 3250 1680 30  0001 C CNN
F 2 "" H 3250 1750 60  0000 C CNN
F 3 "" H 3250 1750 60  0000 C CNN
	1    3250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1550 5400 1550
Wire Wire Line
	5400 1550 5400 800 
Wire Wire Line
	5400 800  5750 800 
Wire Wire Line
	6550 800  7100 800 
Wire Wire Line
	7100 800  7100 700 
$Comp
L +5V #PWR?
U 1 1 55868960
P 7100 700
F 0 "#PWR?" H 7100 790 20  0001 C CNN
F 1 "+5V" H 7100 790 30  0000 C CNN
F 2 "" H 7100 700 60  0000 C CNN
F 3 "" H 7100 700 60  0000 C CNN
	1    7100 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1100 6150 1250
$Comp
L GND #PWR?
U 1 1 55868B0D
P 6150 1250
F 0 "#PWR?" H 6150 1250 30  0001 C CNN
F 1 "GND" H 6150 1180 30  0001 C CNN
F 2 "" H 6150 1250 60  0000 C CNN
F 3 "" H 6150 1250 60  0000 C CNN
	1    6150 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55868D99
P 5700 6350
F 0 "#PWR?" H 5700 6350 30  0001 C CNN
F 1 "GND" H 5700 6280 30  0001 C CNN
F 2 "" H 5700 6350 60  0000 C CNN
F 3 "" H 5700 6350 60  0000 C CNN
	1    5700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3400 1950 3400
Wire Wire Line
	1950 3400 1950 3950
Wire Wire Line
	950  3400 800  3400
Wire Wire Line
	800  3400 800  4300
Wire Wire Line
	950  3800 800  3800
Connection ~ 800  3800
$Comp
L GND #PWR?
U 1 1 558691E2
P 800 4300
F 0 "#PWR?" H 800 4300 30  0001 C CNN
F 1 "GND" H 800 4230 30  0001 C CNN
F 2 "" H 800 4300 60  0000 C CNN
F 3 "" H 800 4300 60  0000 C CNN
	1    800  4300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 558693CF
P 3600 2950
F 0 "#PWR?" H 3600 3040 20  0001 C CNN
F 1 "+5V" H 3600 3040 30  0000 C CNN
F 2 "" H 3600 2950 60  0000 C CNN
F 3 "" H 3600 2950 60  0000 C CNN
	1    3600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3100 3600 2950
Wire Wire Line
	2100 3400 2100 3200
Connection ~ 2100 3400
$Comp
L R R?
U 1 1 5586959B
P 2100 2950
F 0 "R?" V 2180 2950 40  0000 C CNN
F 1 "R" V 2107 2951 40  0000 C CNN
F 2 "" V 2030 2950 30  0000 C CNN
F 3 "" H 2100 2950 30  0000 C CNN
	1    2100 2950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 55869666
P 2100 2600
F 0 "#PWR?" H 2100 2690 20  0001 C CNN
F 1 "+5V" H 2100 2690 30  0000 C CNN
F 2 "" H 2100 2600 60  0000 C CNN
F 3 "" H 2100 2600 60  0000 C CNN
	1    2100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2600 2100 2700
$Comp
L C C?
U 1 1 558697D5
P 1950 4150
F 0 "C?" H 1950 4250 40  0000 L CNN
F 1 "C" H 1956 4065 40  0000 L CNN
F 2 "" H 1988 4000 30  0000 C CNN
F 3 "" H 1950 4150 60  0000 C CNN
	1    1950 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5586981B
P 1950 4450
F 0 "#PWR?" H 1950 4450 30  0001 C CNN
F 1 "GND" H 1950 4380 30  0001 C CNN
F 2 "" H 1950 4450 60  0000 C CNN
F 3 "" H 1950 4450 60  0000 C CNN
	1    1950 4450
	1    0    0    -1  
$EndComp
Connection ~ 1950 3800
Wire Wire Line
	1950 4350 1950 4450
$Comp
L Csmall C?
U 1 1 55869C30
P 5650 1050
F 0 "C?" H 5675 1100 30  0000 L CNN
F 1 "Csmall" H 5675 1000 30  0000 L CNN
F 2 "" H 5650 1050 60  0000 C CNN
F 3 "" H 5650 1050 60  0000 C CNN
	1    5650 1050
	1    0    0    -1  
$EndComp
$Comp
L Csmall C?
U 1 1 55869C77
P 6800 1050
F 0 "C?" H 6825 1100 30  0000 L CNN
F 1 "Csmall" H 6825 1000 30  0000 L CNN
F 2 "" H 6800 1050 60  0000 C CNN
F 3 "" H 6800 1050 60  0000 C CNN
	1    6800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 1000 10750 1000
Wire Wire Line
	10750 1000 10750 1700
Wire Wire Line
	10550 1400 10750 1400
Connection ~ 10750 1400
Wire Wire Line
	10500 2150 10750 2150
Wire Wire Line
	10750 2150 10750 2800
Wire Wire Line
	10500 2550 10750 2550
Connection ~ 10750 2550
$Comp
L GND #PWR?
U 1 1 5586A4C6
P 10750 2800
F 0 "#PWR?" H 10750 2800 30  0001 C CNN
F 1 "GND" H 10750 2730 30  0001 C CNN
F 2 "" H 10750 2800 60  0000 C CNN
F 3 "" H 10750 2800 60  0000 C CNN
	1    10750 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5586A4F6
P 10750 1700
F 0 "#PWR?" H 10750 1700 30  0001 C CNN
F 1 "GND" H 10750 1630 30  0001 C CNN
F 2 "" H 10750 1700 60  0000 C CNN
F 3 "" H 10750 1700 60  0000 C CNN
	1    10750 1700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5586A6CE
P 8650 1700
F 0 "R?" V 8730 1700 40  0000 C CNN
F 1 "R" V 8657 1701 40  0000 C CNN
F 2 "" V 8580 1700 30  0000 C CNN
F 3 "" H 8650 1700 30  0000 C CNN
	1    8650 1700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5586A73F
P 8100 1700
F 0 "R?" V 8180 1700 40  0000 C CNN
F 1 "R" V 8107 1701 40  0000 C CNN
F 2 "" V 8030 1700 30  0000 C CNN
F 3 "" H 8100 1700 30  0000 C CNN
	1    8100 1700
	1    0    0    -1  
$EndComp
$EndSCHEMATC

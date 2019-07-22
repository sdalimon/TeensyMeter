EESchema Schematic File Version 4
LIBS:TeensyMeter-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
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
L teensy:Teensy3.6 U1
U 1 1 5D0054DF
P 3650 5150
F 0 "U1" H 3650 7537 60  0000 C CNN
F 1 "Teensy3.6" H 3650 7431 60  0000 C CNN
F 2 "teensy:Teensy35_36" H 3650 5150 60  0001 C CNN
F 3 "" H 3650 5150 60  0000 C CNN
	1    3650 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D00D2CC
P 2450 7500
F 0 "#PWR03" H 2450 7250 50  0001 C CNN
F 1 "GND" H 2455 7327 50  0000 C CNN
F 2 "" H 2450 7500 50  0001 C CNN
F 3 "" H 2450 7500 50  0001 C CNN
	1    2450 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7500 2450 6850
Wire Wire Line
	2450 6850 2650 6850
Wire Wire Line
	2450 6850 2450 5650
Wire Wire Line
	2450 5650 2650 5650
Connection ~ 2450 6850
Wire Wire Line
	2450 5650 2450 3050
Wire Wire Line
	2450 3050 2650 3050
Connection ~ 2450 5650
$Comp
L power:GND #PWR05
U 1 1 5D00E8E3
P 4900 7500
F 0 "#PWR05" H 4900 7250 50  0001 C CNN
F 1 "GND" H 4905 7327 50  0000 C CNN
F 2 "" H 4900 7500 50  0001 C CNN
F 3 "" H 4900 7500 50  0001 C CNN
	1    4900 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7500 4900 5550
Wire Wire Line
	4900 5550 4650 5550
Wire Wire Line
	4900 5550 4900 5450
Wire Wire Line
	4900 5450 4650 5450
Connection ~ 4900 5550
Wire Wire Line
	4900 5450 4900 4250
Wire Wire Line
	4900 4250 4650 4250
Connection ~ 4900 5450
$Comp
L power:+3.3V #PWR02
U 1 1 5D00FE29
P 2350 2950
F 0 "#PWR02" H 2350 2800 50  0001 C CNN
F 1 "+3.3V" H 2365 3123 50  0000 C CNN
F 2 "" H 2350 2950 50  0001 C CNN
F 3 "" H 2350 2950 50  0001 C CNN
	1    2350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2950 2350 4450
Wire Wire Line
	2350 4450 2650 4450
Wire Wire Line
	2350 4450 2350 5550
Wire Wire Line
	2350 5550 2650 5550
Connection ~ 2350 4450
$Comp
L power:+3.3V #PWR04
U 1 1 5D010C8A
P 4900 2950
F 0 "#PWR04" H 4900 2800 50  0001 C CNN
F 1 "+3.3V" H 4915 3123 50  0000 C CNN
F 2 "" H 4900 2950 50  0001 C CNN
F 3 "" H 4900 2950 50  0001 C CNN
	1    4900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2950 4900 4150
Wire Wire Line
	4900 4150 4650 4150
$Comp
L power:+5V #PWR06
U 1 1 5D011B8B
P 5100 2950
F 0 "#PWR06" H 5100 2800 50  0001 C CNN
F 1 "+5V" H 5115 3123 50  0000 C CNN
F 2 "" H 5100 2950 50  0001 C CNN
F 3 "" H 5100 2950 50  0001 C CNN
	1    5100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2950 5100 6350
Wire Wire Line
	5100 6350 4650 6350
Text Notes 3500 2500 0    50   ~ 0
TEENSY
Text Notes 6900 850  0    50   ~ 0
POWER SUPPLY
$Comp
L Device:C C2
U 1 1 5D018ACC
P 4050 1300
F 0 "C2" H 4165 1346 50  0000 L CNN
F 1 "1u" H 4165 1255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4088 1150 50  0001 C CNN
F 3 "~" H 4050 1300 50  0001 C CNN
	1    4050 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D01981B
P 4450 1300
F 0 "C3" H 4565 1346 50  0000 L CNN
F 1 "100n" H 4565 1255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4488 1150 50  0001 C CNN
F 3 "~" H 4450 1300 50  0001 C CNN
	1    4450 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D019BB7
P 4250 1600
F 0 "#PWR013" H 4250 1350 50  0001 C CNN
F 1 "GND" H 4255 1427 50  0000 C CNN
F 2 "" H 4250 1600 50  0001 C CNN
F 3 "" H 4250 1600 50  0001 C CNN
	1    4250 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 5D01AB83
P 4250 1050
F 0 "#PWR012" H 4250 900 50  0001 C CNN
F 1 "+3.3V" H 4265 1223 50  0000 C CNN
F 2 "" H 4250 1050 50  0001 C CNN
F 3 "" H 4250 1050 50  0001 C CNN
	1    4250 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1600 4250 1550
Wire Wire Line
	4250 1550 4050 1550
Wire Wire Line
	4050 1550 4050 1450
Wire Wire Line
	4250 1550 4450 1550
Wire Wire Line
	4450 1550 4450 1450
Connection ~ 4250 1550
Wire Wire Line
	4050 1150 4050 1100
Wire Wire Line
	4050 1100 4250 1100
Wire Wire Line
	4250 1100 4250 1050
Wire Wire Line
	4450 1150 4450 1100
Wire Wire Line
	4450 1100 4250 1100
Connection ~ 4250 1100
$Comp
L Device:C C9
U 1 1 5D01CA5F
P 7850 1400
F 0 "C9" H 7965 1446 50  0000 L CNN
F 1 "100n" H 7965 1355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7888 1250 50  0001 C CNN
F 3 "~" H 7850 1400 50  0001 C CNN
	1    7850 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1700 7450 1550
Wire Wire Line
	7850 1700 7850 1550
Wire Wire Line
	7450 1250 7450 1200
Wire Wire Line
	7850 1250 7850 1200
$Comp
L power:+5V #PWR018
U 1 1 5D01E56D
P 6400 1200
F 0 "#PWR018" H 6400 1050 50  0001 C CNN
F 1 "+5V" H 6415 1373 50  0000 C CNN
F 2 "" H 6400 1200 50  0001 C CNN
F 3 "" H 6400 1200 50  0001 C CNN
	1    6400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead L1
U 1 1 5D02117B
P 7200 1200
F 0 "L1" V 6926 1200 50  0000 C CNN
F 1 "600" V 7017 1200 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L5.3mm_D2.2mm_P7.62mm_Horizontal_Vishay_IM-1" V 7130 1200 50  0001 C CNN
F 3 "~" H 7200 1200 50  0001 C CNN
	1    7200 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 1200 7600 1200
Wire Wire Line
	6400 1200 6600 1200
Connection ~ 7450 1200
Wire Wire Line
	7350 1200 7450 1200
$Comp
L power:+5VA #PWR023
U 1 1 5D02A443
P 7850 1150
F 0 "#PWR023" H 7850 1000 50  0001 C CNN
F 1 "+5VA" H 7865 1323 50  0000 C CNN
F 2 "" H 7850 1150 50  0001 C CNN
F 3 "" H 7850 1150 50  0001 C CNN
	1    7850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1150 7850 1200
Connection ~ 7850 1200
$Comp
L Device:C C8
U 1 1 5D01CA55
P 7450 1400
F 0 "C8" H 7565 1446 50  0000 L CNN
F 1 "1u" H 7565 1355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7488 1250 50  0001 C CNN
F 3 "~" H 7450 1400 50  0001 C CNN
	1    7450 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5D02FA80
P 9400 1500
F 0 "C11" H 9515 1546 50  0000 L CNN
F 1 "3u3" H 9515 1455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 9438 1350 50  0001 C CNN
F 3 "~" H 9400 1500 50  0001 C CNN
	1    9400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5D03014F
P 9750 1500
F 0 "C12" H 9865 1546 50  0000 L CNN
F 1 "100n" H 9865 1455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9788 1350 50  0001 C CNN
F 3 "~" H 9750 1500 50  0001 C CNN
	1    9750 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR020
U 1 1 5D03433F
P 7450 1750
F 0 "#PWR020" H 7450 1500 50  0001 C CNN
F 1 "GNDA" H 7455 1577 50  0000 C CNN
F 2 "" H 7450 1750 50  0001 C CNN
F 3 "" H 7450 1750 50  0001 C CNN
	1    7450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1200 9400 1350
Wire Wire Line
	9400 1200 9750 1200
Wire Wire Line
	9750 1200 9750 1350
Connection ~ 9400 1200
Wire Wire Line
	9400 1650 9400 1700
Wire Wire Line
	9400 1700 9750 1700
Wire Wire Line
	9750 1700 9750 1650
Connection ~ 9400 1700
Connection ~ 7850 1700
Connection ~ 7450 1700
$Comp
L power:+3.3VA #PWR024
U 1 1 5D0401D0
P 9750 1150
F 0 "#PWR024" H 9750 1000 50  0001 C CNN
F 1 "+3.3VA" H 9765 1323 50  0000 C CNN
F 2 "" H 9750 1150 50  0001 C CNN
F 3 "" H 9750 1150 50  0001 C CNN
	1    9750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1200 9750 1150
Wire Wire Line
	7450 1700 7850 1700
Connection ~ 9750 1200
$Comp
L Device:C C6
U 1 1 5D045D44
P 6600 1400
F 0 "C6" H 6715 1446 50  0000 L CNN
F 1 "1u" H 6715 1355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6638 1250 50  0001 C CNN
F 3 "~" H 6600 1400 50  0001 C CNN
	1    6600 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5D045D4E
P 7000 1400
F 0 "C7" H 7115 1446 50  0000 L CNN
F 1 "100n" H 7115 1355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7038 1250 50  0001 C CNN
F 3 "~" H 7000 1400 50  0001 C CNN
	1    7000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1700 6600 1550
Wire Wire Line
	7000 1700 7000 1550
Wire Wire Line
	6600 1250 6600 1200
Wire Wire Line
	7000 1250 7000 1200
Connection ~ 6600 1200
Connection ~ 7000 1200
Wire Wire Line
	7000 1200 7050 1200
Wire Wire Line
	6600 1200 6800 1200
Wire Wire Line
	6400 1700 6600 1700
Wire Wire Line
	6600 1700 6800 1700
Connection ~ 6600 1700
Wire Wire Line
	7450 1700 7450 1750
$Comp
L power:GND #PWR019
U 1 1 5D04BD29
P 6400 1750
F 0 "#PWR019" H 6400 1500 50  0001 C CNN
F 1 "GND" H 6405 1577 50  0000 C CNN
F 2 "" H 6400 1750 50  0001 C CNN
F 3 "" H 6400 1750 50  0001 C CNN
	1    6400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1700 6400 1750
Text Notes 6200 2050 0    50   ~ 0
GND and GNDA connected on Teensy w/ ferrite
$Comp
L 2019-06-12_01-56-04:MCP6281RT-E_OT U2
U 1 1 5D04DF97
P 7950 3300
F 0 "U2" H 8750 3787 60  0000 C CNN
F 1 "MCP6281RT-E_OT DIP" H 8750 3681 60  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8750 3640 60  0001 C CNN
F 3 "" H 7950 3300 60  0000 C CNN
	1    7950 3300
	1    0    0    -1  
$EndComp
Text Notes 8550 2600 0    50   ~ 0
MID SCALE REFERENCE
Wire Wire Line
	4650 6150 5400 6150
Text Label 5400 6150 2    50   ~ 0
AREF
$Comp
L power:+3.3VA #PWR014
U 1 1 5D051D45
P 7800 3700
F 0 "#PWR014" H 7800 3550 50  0001 C CNN
F 1 "+3.3VA" H 7815 3873 50  0000 C CNN
F 2 "" H 7800 3700 50  0001 C CNN
F 3 "" H 7800 3700 50  0001 C CNN
	1    7800 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D05252F
P 7800 4000
F 0 "C4" H 7915 4046 50  0000 L CNN
F 1 "100n" H 7915 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7838 3850 50  0001 C CNN
F 3 "~" H 7800 4000 50  0001 C CNN
	1    7800 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR015
U 1 1 5D052BAE
P 7800 4200
F 0 "#PWR015" H 7800 3950 50  0001 C CNN
F 1 "GNDA" H 7805 4027 50  0000 C CNN
F 2 "" H 7800 4200 50  0001 C CNN
F 3 "" H 7800 4200 50  0001 C CNN
	1    7800 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR021
U 1 1 5D05306D
P 9600 4200
F 0 "#PWR021" H 9600 3950 50  0001 C CNN
F 1 "GNDA" H 9605 4027 50  0000 C CNN
F 2 "" H 9600 4200 50  0001 C CNN
F 3 "" H 9600 4200 50  0001 C CNN
	1    9600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4200 9600 3600
Wire Wire Line
	9600 3600 9550 3600
Wire Wire Line
	7950 3700 7800 3700
Wire Wire Line
	7800 3850 7800 3700
Connection ~ 7800 3700
Wire Wire Line
	7800 4150 7800 4200
Wire Wire Line
	7950 3300 7900 3300
Wire Wire Line
	7900 3300 7900 2750
Wire Wire Line
	7900 2750 9600 2750
Wire Wire Line
	9600 2750 9600 3200
Wire Wire Line
	9600 3200 9550 3200
Wire Wire Line
	9600 3200 9850 3200
Connection ~ 9600 3200
Text Label 9850 3200 2    50   ~ 0
MID
$Comp
L Device:C C1
U 1 1 5D05F2AB
P 6900 3600
F 0 "C1" H 7015 3646 50  0000 L CNN
F 1 "100n" H 7015 3555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6938 3450 50  0001 C CNN
F 3 "~" H 6900 3600 50  0001 C CNN
	1    6900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3750 6900 3800
Wire Wire Line
	6900 3800 7300 3800
Wire Wire Line
	7300 3800 7300 3750
Wire Wire Line
	7300 3800 7300 3900
Connection ~ 7300 3800
$Comp
L power:GNDA #PWR011
U 1 1 5D063DF7
P 7300 3900
F 0 "#PWR011" H 7300 3650 50  0001 C CNN
F 1 "GNDA" H 7305 3727 50  0000 C CNN
F 2 "" H 7300 3900 50  0001 C CNN
F 3 "" H 7300 3900 50  0001 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3450 6900 3400
Wire Wire Line
	6900 3400 7300 3400
Wire Wire Line
	7300 3400 7300 3350
Wire Wire Line
	7300 3400 7300 3450
Connection ~ 7300 3400
Wire Wire Line
	7300 3050 7300 2950
Wire Wire Line
	7300 2950 7000 2950
Text Label 7000 2950 0    50   ~ 0
AREF
Wire Wire Line
	7300 3400 7950 3400
$Comp
L 2019-06-12_01-56-04:MCP6281RT-E_OT U3
U 1 1 5D06F949
P 8000 5350
F 0 "U3" H 8800 5837 60  0000 C CNN
F 1 "MCP6281RT-E_OT DIP" H 8800 5731 60  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8800 5690 60  0001 C CNN
F 3 "" H 8000 5350 60  0000 C CNN
	1    8000 5350
	1    0    0    -1  
$EndComp
Text Notes 8600 4650 0    50   ~ 0
DIFF. AMP
$Comp
L power:+3.3VA #PWR016
U 1 1 5D06F954
P 7850 5750
F 0 "#PWR016" H 7850 5600 50  0001 C CNN
F 1 "+3.3VA" H 7865 5923 50  0000 C CNN
F 2 "" H 7850 5750 50  0001 C CNN
F 3 "" H 7850 5750 50  0001 C CNN
	1    7850 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5D06F95E
P 7850 6050
F 0 "C5" H 7965 6096 50  0000 L CNN
F 1 "100n" H 7965 6005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7888 5900 50  0001 C CNN
F 3 "~" H 7850 6050 50  0001 C CNN
	1    7850 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR017
U 1 1 5D06F968
P 7850 6250
F 0 "#PWR017" H 7850 6000 50  0001 C CNN
F 1 "GNDA" H 7855 6077 50  0000 C CNN
F 2 "" H 7850 6250 50  0001 C CNN
F 3 "" H 7850 6250 50  0001 C CNN
	1    7850 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR022
U 1 1 5D06F972
P 9650 6250
F 0 "#PWR022" H 9650 6000 50  0001 C CNN
F 1 "GNDA" H 9655 6077 50  0000 C CNN
F 2 "" H 9650 6250 50  0001 C CNN
F 3 "" H 9650 6250 50  0001 C CNN
	1    9650 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 6250 9650 5650
Wire Wire Line
	9650 5650 9600 5650
Wire Wire Line
	8000 5750 7850 5750
Wire Wire Line
	7850 5900 7850 5750
Connection ~ 7850 5750
Wire Wire Line
	7850 6200 7850 6250
$Comp
L Device:R R3
U 1 1 5D06F98A
P 7150 4750
F 0 "R3" V 6943 4750 50  0000 C CNN
F 1 "10MEG" V 7034 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7080 4750 50  0001 C CNN
F 3 "~" H 7150 4750 50  0001 C CNN
F 4 "0.1%" V 7150 4750 50  0000 C CNN "Tol"
	1    7150 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D06F994
P 7400 5850
F 0 "R7" H 7470 5896 50  0000 L CNN
F 1 "221k" H 7470 5805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7330 5850 50  0001 C CNN
F 3 "~" H 7400 5850 50  0001 C CNN
F 4 "0.1%" V 7400 5850 50  0000 C CNN "Tol"
	1    7400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5250 9900 5250
$Comp
L Device:R R8
U 1 1 5D075D54
P 8000 4750
F 0 "R8" V 7793 4750 50  0000 C CNN
F 1 "221k" V 7884 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7930 4750 50  0001 C CNN
F 3 "~" H 8000 4750 50  0001 C CNN
F 4 "0.1%" V 8000 4750 50  0000 C CNN "Tol"
	1    8000 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D076921
P 7150 5450
F 0 "R4" V 6943 5450 50  0000 C CNN
F 1 "10MEG" V 7034 5450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7080 5450 50  0001 C CNN
F 3 "~" H 7150 5450 50  0001 C CNN
F 4 "0.1%" V 7150 5450 50  0000 C CNN "Tol"
	1    7150 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 5700 7400 5450
Wire Wire Line
	7400 5450 7300 5450
Wire Wire Line
	7000 5450 6450 5450
Wire Wire Line
	7300 4750 7650 4750
Wire Wire Line
	8150 4750 9600 4750
Wire Wire Line
	9600 4750 9600 5250
Connection ~ 9600 5250
Wire Wire Line
	7650 4750 7650 5350
Wire Wire Line
	7650 5350 8000 5350
Connection ~ 7650 4750
Wire Wire Line
	7650 4750 7850 4750
Wire Wire Line
	7400 5450 8000 5450
Connection ~ 7400 5450
Wire Wire Line
	7400 6000 7400 6100
Text Label 6700 5450 0    50   ~ 0
INP
Text Label 6700 4750 0    50   ~ 0
INN
Text Label 9900 5250 2    50   ~ 0
A9
Text Label 5400 6650 2    50   ~ 0
A9
Wire Wire Line
	4650 6650 5400 6650
$Comp
L power:GNDA #PWR07
U 1 1 5D015D6C
P 5100 7500
F 0 "#PWR07" H 5100 7250 50  0001 C CNN
F 1 "GNDA" H 5105 7327 50  0000 C CNN
F 2 "" H 5100 7500 50  0001 C CNN
F 3 "" H 5100 7500 50  0001 C CNN
	1    5100 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6450 5100 6450
Wire Wire Line
	5100 6450 5100 7500
Wire Wire Line
	4650 6550 5400 6550
$Comp
L power:+3.3V #PWR08
U 1 1 5D0A8561
P 5400 6550
F 0 "#PWR08" H 5400 6400 50  0001 C CNN
F 1 "+3.3V" H 5415 6723 50  0000 C CNN
F 2 "" H 5400 6550 50  0001 C CNN
F 3 "" H 5400 6550 50  0001 C CNN
	1    5400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6100 6700 6100
Text Label 6700 6100 0    50   ~ 0
MID
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5D0B095D
P 6250 4750
F 0 "J1" H 6168 4967 50  0000 C CNN
F 1 "Conn_01x02" H 6168 4876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6250 4750 50  0001 C CNN
F 3 "~" H 6250 4750 50  0001 C CNN
	1    6250 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 4750 7000 4750
Wire Wire Line
	6450 4850 6450 5450
$Comp
L power:+3.3V #PWR010
U 1 1 5D0C200A
P 2300 700
F 0 "#PWR010" H 2300 550 50  0001 C CNN
F 1 "+3.3V" H 2315 873 50  0000 C CNN
F 2 "" H 2300 700 50  0001 C CNN
F 3 "" H 2300 700 50  0001 C CNN
	1    2300 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D0D77A4
P 800 1050
F 0 "R1" H 870 1096 50  0000 L CNN
F 1 "10k" H 870 1005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 730 1050 50  0001 C CNN
F 3 "~" H 800 1050 50  0001 C CNN
	1    800  1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D0DC17A
P 1050 1050
F 0 "R2" H 1120 1096 50  0000 L CNN
F 1 "10k" H 1120 1005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 980 1050 50  0001 C CNN
F 3 "~" H 1050 1050 50  0001 C CNN
	1    1050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 7050 5400 7050
Wire Wire Line
	4650 7150 5400 7150
Text Label 5400 7050 2    50   ~ 0
SCL
Text Label 5400 7150 2    50   ~ 0
SDA
$Comp
L Switch:SW_Push SW1
U 1 1 5D1139B0
P 1050 5950
F 0 "SW1" H 1050 6235 50  0000 C CNN
F 1 "SW_Push" H 1050 6144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 1050 6150 50  0001 C CNN
F 3 "" H 1050 6150 50  0001 C CNN
	1    1050 5950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5D1191D0
P 1050 6350
F 0 "SW2" H 1050 6635 50  0000 C CNN
F 1 "SW_Push" H 1050 6544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 1050 6550 50  0001 C CNN
F 3 "" H 1050 6550 50  0001 C CNN
	1    1050 6350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5D11969E
P 1050 6750
F 0 "SW3" H 1050 7035 50  0000 C CNN
F 1 "SW_Push" H 1050 6944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 1050 6950 50  0001 C CNN
F 3 "" H 1050 6950 50  0001 C CNN
	1    1050 6750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5D119C0D
P 1050 7150
F 0 "SW4" H 1050 7435 50  0000 C CNN
F 1 "SW_Push" H 1050 7344 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 1050 7350 50  0001 C CNN
F 3 "" H 1050 7350 50  0001 C CNN
	1    1050 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5950 850  6350
Wire Wire Line
	850  6350 850  6750
Connection ~ 850  6350
Wire Wire Line
	850  6750 850  7150
Connection ~ 850  6750
Wire Wire Line
	850  7150 850  7450
Connection ~ 850  7150
$Comp
L power:GND #PWR01
U 1 1 5D1356E2
P 850 7450
F 0 "#PWR01" H 850 7200 50  0001 C CNN
F 1 "GND" H 855 7277 50  0000 C CNN
F 2 "" H 850 7450 50  0001 C CNN
F 3 "" H 850 7450 50  0001 C CNN
	1    850  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5950 1350 5950
Wire Wire Line
	2150 6050 2150 6350
Wire Wire Line
	2150 6350 1600 6350
Wire Wire Line
	2150 6050 2650 6050
Wire Wire Line
	2650 6150 2250 6150
Wire Wire Line
	2250 6150 2250 6750
Wire Wire Line
	2250 6750 1850 6750
Wire Wire Line
	2650 6250 2350 6250
Wire Wire Line
	2350 6250 2350 7150
Wire Wire Line
	2350 7150 2100 7150
NoConn ~ 2650 3150
NoConn ~ 2650 3250
NoConn ~ 2650 3350
NoConn ~ 2650 3450
NoConn ~ 2650 3550
NoConn ~ 2650 3650
NoConn ~ 2650 3750
NoConn ~ 2650 3850
NoConn ~ 2650 3950
NoConn ~ 2650 4050
NoConn ~ 2650 4150
NoConn ~ 2650 4250
NoConn ~ 2650 4350
NoConn ~ 2650 4550
NoConn ~ 2650 4650
NoConn ~ 2650 4750
NoConn ~ 2650 4850
NoConn ~ 2650 4950
NoConn ~ 2650 5050
NoConn ~ 2650 5150
NoConn ~ 2650 5250
NoConn ~ 2650 5350
NoConn ~ 2650 5450
NoConn ~ 2650 5750
NoConn ~ 2650 5850
NoConn ~ 2650 6350
NoConn ~ 2650 6450
NoConn ~ 2650 6550
NoConn ~ 2650 6650
NoConn ~ 2650 6750
NoConn ~ 2650 6950
NoConn ~ 2650 7050
NoConn ~ 2650 7150
NoConn ~ 2650 7250
NoConn ~ 4650 7250
NoConn ~ 4650 6950
NoConn ~ 4650 6850
NoConn ~ 4650 6750
NoConn ~ 4650 6250
NoConn ~ 4650 6050
NoConn ~ 4650 5950
NoConn ~ 4650 5850
NoConn ~ 4650 5750
NoConn ~ 4650 5650
NoConn ~ 4650 5350
NoConn ~ 4650 5250
NoConn ~ 4650 5150
NoConn ~ 4650 5050
NoConn ~ 4650 4950
NoConn ~ 4650 4850
NoConn ~ 4650 4750
NoConn ~ 4650 4650
NoConn ~ 4650 4550
NoConn ~ 4650 4450
NoConn ~ 4650 4350
NoConn ~ 4650 4050
NoConn ~ 4650 3950
NoConn ~ 4650 3850
NoConn ~ 4650 3750
NoConn ~ 4650 3650
NoConn ~ 4650 3550
NoConn ~ 4650 3450
NoConn ~ 4650 3350
NoConn ~ 4650 3250
NoConn ~ 4650 3150
NoConn ~ 4650 3050
$Comp
L Device:R R5
U 1 1 5D05D942
P 7300 3200
F 0 "R5" H 7370 3246 50  0000 L CNN
F 1 "10k" H 7370 3155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7230 3200 50  0001 C CNN
F 3 "~" H 7300 3200 50  0001 C CNN
F 4 "0.1%" V 7300 3200 50  0000 C CNN "Tol"
	1    7300 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D05EB18
P 7300 3600
F 0 "R6" H 7370 3646 50  0000 L CNN
F 1 "10k" H 7370 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7230 3600 50  0001 C CNN
F 3 "~" H 7300 3600 50  0001 C CNN
F 4 "0.1%" V 7300 3600 50  0000 C CNN "Tol"
	1    7300 3600
	1    0    0    -1  
$EndComp
Text Notes 1800 600  0    50   ~ 0
DISPLAY
Text Notes 900  5550 0    50   ~ 0
Buttons\n
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D04D497
P 6800 1700
F 0 "#FLG0102" H 6800 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 6800 1873 50  0000 C CNN
F 2 "" H 6800 1700 50  0001 C CNN
F 3 "" H 6800 1700 50  0001 C CNN
	1    6800 1700
	1    0    0    -1  
$EndComp
Connection ~ 6800 1700
Wire Wire Line
	6800 1700 7000 1700
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5D04F053
P 7600 1200
F 0 "#FLG0104" H 7600 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 7600 1373 50  0000 C CNN
F 2 "" H 7600 1200 50  0001 C CNN
F 3 "" H 7600 1200 50  0001 C CNN
	1    7600 1200
	1    0    0    -1  
$EndComp
Connection ~ 7600 1200
Wire Wire Line
	7600 1200 7850 1200
Wire Wire Line
	8850 1200 9400 1200
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D050F25
P 6800 1200
F 0 "#FLG0101" H 6800 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 6800 1373 50  0000 C CNN
F 2 "" H 6800 1200 50  0001 C CNN
F 3 "" H 6800 1200 50  0001 C CNN
	1    6800 1200
	1    0    0    -1  
$EndComp
Connection ~ 6800 1200
Wire Wire Line
	6800 1200 7000 1200
$Comp
L Device:R R9
U 1 1 5D088987
P 1350 5700
F 0 "R9" H 1420 5746 50  0000 L CNN
F 1 "10k" H 1420 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1280 5700 50  0001 C CNN
F 3 "~" H 1350 5700 50  0001 C CNN
	1    1350 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D088FDE
P 1600 5700
F 0 "R10" H 1670 5746 50  0000 L CNN
F 1 "10k" H 1670 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1530 5700 50  0001 C CNN
F 3 "~" H 1600 5700 50  0001 C CNN
	1    1600 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D089270
P 1850 5700
F 0 "R11" H 1920 5746 50  0000 L CNN
F 1 "10k" H 1920 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1780 5700 50  0001 C CNN
F 3 "~" H 1850 5700 50  0001 C CNN
	1    1850 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5D08940C
P 2100 5700
F 0 "R12" H 2170 5746 50  0000 L CNN
F 1 "10k" H 2170 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2030 5700 50  0001 C CNN
F 3 "~" H 2100 5700 50  0001 C CNN
	1    2100 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5850 1350 5950
Connection ~ 1350 5950
Wire Wire Line
	1350 5950 2650 5950
Wire Wire Line
	1600 5850 1600 6350
Connection ~ 1600 6350
Wire Wire Line
	1600 6350 1250 6350
Wire Wire Line
	1850 5850 1850 6750
Connection ~ 1850 6750
Wire Wire Line
	1850 6750 1250 6750
Wire Wire Line
	2100 5850 2100 7150
Connection ~ 2100 7150
Wire Wire Line
	2100 7150 1250 7150
Wire Wire Line
	1350 5450 1600 5450
Wire Wire Line
	2100 5450 2100 5550
Wire Wire Line
	1350 5450 1350 5550
Wire Wire Line
	1850 5550 1850 5450
Connection ~ 1850 5450
Wire Wire Line
	1850 5450 2100 5450
Wire Wire Line
	1600 5550 1600 5450
Connection ~ 1600 5450
Wire Wire Line
	1600 5450 1750 5450
Wire Wire Line
	1750 5450 1750 5400
Connection ~ 1750 5450
Wire Wire Line
	1750 5450 1850 5450
$Comp
L power:+3.3V #PWR025
U 1 1 5D0CC73E
P 1750 5400
F 0 "#PWR025" H 1750 5250 50  0001 C CNN
F 1 "+3.3V" H 1765 5573 50  0000 C CNN
F 2 "" H 1750 5400 50  0001 C CNN
F 3 "" H 1750 5400 50  0001 C CNN
	1    1750 5400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LP2950-3.3_TO92 U4
U 1 1 5D06126D
P 8550 1200
F 0 "U4" H 8550 1442 50  0000 C CNN
F 1 "LP2950-3.3_TO92" H 8550 1351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8550 1425 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lp2950-n.pdf" H 8550 1150 50  0001 C CNN
	1    8550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1200 8250 1200
Wire Wire Line
	7850 1700 8550 1700
Wire Wire Line
	8550 1500 8550 1700
Connection ~ 8550 1700
Wire Wire Line
	8550 1700 9400 1700
$Comp
L TeensyMeter-rescue:SparkFun_7seg-teensymeter U5
U 1 1 5D092D3A
P 2300 1600
F 0 "U5" H 2550 2350 50  0000 C CNN
F 1 "SparkFun_7seg" H 2800 2250 50  0000 C CNN
F 2 "footprints:SparkFun_7seg" H 1650 2200 50  0001 C CNN
F 3 "" H 1650 2200 50  0001 C CNN
	1    2300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 800  2150 750 
Wire Wire Line
	2150 750  2250 750 
Wire Wire Line
	2300 750  2300 700 
Wire Wire Line
	2450 750  2450 800 
Connection ~ 2300 750 
Wire Wire Line
	2300 750  2350 750 
Wire Wire Line
	2250 800  2250 750 
Connection ~ 2250 750 
Wire Wire Line
	2250 750  2300 750 
Wire Wire Line
	2350 800  2350 750 
Connection ~ 2350 750 
Wire Wire Line
	2350 750  2450 750 
$Comp
L power:GND #PWR026
U 1 1 5D0E7AD8
P 2300 2450
F 0 "#PWR026" H 2300 2200 50  0001 C CNN
F 1 "GND" H 2305 2277 50  0000 C CNN
F 2 "" H 2300 2450 50  0001 C CNN
F 3 "" H 2300 2450 50  0001 C CNN
	1    2300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2350 2150 2400
Wire Wire Line
	2150 2400 2250 2400
Wire Wire Line
	2450 2400 2450 2350
Wire Wire Line
	2350 2350 2350 2400
Connection ~ 2350 2400
Wire Wire Line
	2350 2400 2450 2400
Wire Wire Line
	2250 2350 2250 2400
Connection ~ 2250 2400
Wire Wire Line
	2250 2400 2300 2400
Wire Wire Line
	2300 2450 2300 2400
Connection ~ 2300 2400
Wire Wire Line
	2300 2400 2350 2400
Text Label 600  1400 0    50   ~ 0
SDA
Text Label 600  1500 0    50   ~ 0
SCL
Connection ~ 800  1400
Wire Wire Line
	800  1400 600  1400
Connection ~ 2150 750 
Wire Wire Line
	800  1400 1450 1400
Wire Wire Line
	600  1500 1050 1500
Connection ~ 1050 1500
Wire Wire Line
	1050 1500 1450 1500
NoConn ~ 1450 1700
NoConn ~ 1450 1900
NoConn ~ 1450 2000
NoConn ~ 1450 2100
NoConn ~ 3100 1900
NoConn ~ 3100 1800
NoConn ~ 3100 1700
NoConn ~ 3100 1600
NoConn ~ 3100 1500
NoConn ~ 3100 1400
NoConn ~ 3100 1300
Wire Wire Line
	800  750  1050 750 
Wire Wire Line
	800  900  800  750 
Wire Wire Line
	1050 900  1050 750 
Connection ~ 1050 750 
Wire Wire Line
	1050 750  2150 750 
Wire Wire Line
	800  1200 800  1400
Wire Wire Line
	1050 1200 1050 1500
NoConn ~ 1450 1100
NoConn ~ 1450 1200
$Comp
L Connector_Specialized:Barrel_Jack J2
U 1 1 5D2DFE08
P 5750 1450
F 0 "J2" H 5829 1775 50  0000 C CNN
F 1 "Barrel_Jack" H 5829 1684 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 5800 1410 50  0001 C CNN
F 3 "~" H 5800 1410 50  0001 C CNN
	1    5750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1350 6300 1200
Wire Wire Line
	6300 1200 6400 1200
Connection ~ 6400 1200
Wire Wire Line
	6050 1350 6300 1350
Wire Wire Line
	6050 1550 6300 1550
Wire Wire Line
	6300 1550 6300 1700
Wire Wire Line
	6300 1700 6400 1700
Connection ~ 6400 1700
Text Notes 6050 2400 0    50   ~ 0
5V is also supplied by teensy when USB is connected.\nEither disconnect barrel jack when USB is used or cut USB power \njumper on the Teensy\n
$EndSCHEMATC

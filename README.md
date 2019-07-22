# TeensyMeter
A simple voltmeter using a Teensy 3.5/3.6

This was a PCB I made up to experiment with software RMS calculation.

The hardware provides the following:
  - Socket for a Teensy 3.5 or Teensy 3.6 processor board
  - Socket for a SparkFun 7 segment display module (I2C connection only)
  - 4 pushbuttons
  - Differential Amplifier connected to input A9 of the Teensy
  
The input is differential, but not isolated.  The input range is +/- 60 V.  No protection against overvoltage is provided except the series resistors.  Do not connect to hazardous voltages.

The software constantly displays either the average (DC, positive only) voltage or the calculated voltage.  SW1 selects DC and SW2 selects RMS.

Calibration of offset and gain is supported, but the results are pretty good with 0.1% resistors even without calibration.  The calibration constants are stored in the EEPROM and sane defaults are used if the EEPROM is corrupt.  
To calibrate:
  - Connect 0.00 V to the input (short the wires)
  - Press SW3
  - Connect 10.00 V DC to the input
  - Press SW4
  
The hardware was designed in KiCAD 5.1.2.  The deisgn includes both 2 layer and 4 layer layouts.  Only the 2 layer layout is tested.

The software was written using the Arduino SDK with the TeensyDuino add-on.  THe followinjg libraries are used:  Wire, EEPROM, CRC32.

Known issues:
 - The resistor footprints are too small.
 - The UART interface of the 7 segment display would be easier to use.
 - The software should make it harder to accidentally calibrate.

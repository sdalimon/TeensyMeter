#include <CRC32.h>

#include <Wire.h>
#include <EEPROM.h>

// Library Support Stuff
IntervalTimer t;   // Sampling timer

// Data Types
enum Mode {MODE_AVG, MODE_RMS, MODE_CAL};
struct CfgData {
  double gn;  // Calibrated Gain
  double ofs; // Calibrated Offset
  enum Mode mode; // Current Mode
  long crc;
};

// Strings
const char* STR_MODE_AVG = " DC "; // AVG with characters available on 7 seg display
const char* STR_MODE_RMS = "RMS "; // RMS with characters available on 7 seg display
const char* STR_MODE_CAL00 = "CL00"; // CAL 0.000 V - Prompt to apply 0 V for offset calibration
const char* STR_MODE_CAL10 = "CL10"; // CAL 10.00 V - Prompt to apply 10 V for gain calibration
const char CHR_7SEG_CLR = 0x76;  // Clear command for Sparkfun display
const char CHR_7SEG_DP = 0x77; // Followed by {X X AP CL D3 D2 D1 D0}

// Hardware configuration
const int led_pin = 13;
const int adc_in_pin = A9;               // ADC Input from amplifier
const int button_dc_pin = 33;              // Pushbuttons (0==Button pressed)
const int button_rms_pin = 34;
const int button_zero_pin = 35;
const int button_cal_pin = 36;
const int disp_i2c_addr = 0x71;          // SparkFun 7 seg ment display i2c address

// Parameters
const double default_gn = 3.3 / 65535 * 1000 / 20; // Default Gain
const int default_ofs = 32768;                  // Default Offset
const double cal_voltage = 10.0;                // Voltage to use for calibrating gain
const enum Mode default_mode = MODE_AVG;        // Start in Average (DC) mode

const long sample_rate = 1000; // 1 kHz sample rate
const long samples     = sample_rate * (10.0 / 50.0); // 10 cycles of 50 Hz

// EEPROM info for cal. storage
// 0 - 3 - Offset (double)
// 4 - 7 - Gain   (double)
// 8 - 11- CRC    (uint32_t)
const int eeprom_ofs_addr = 0;
const int eeprom_gn_addr = eeprom_ofs_addr + sizeof(double);
const int eeprom_crc_addr = eeprom_gn_addr + sizeof(double);

// Global Data
// Data Buffer
volatile uint16_t buff[samples];
struct CfgData cfg = {default_gn, default_ofs, MODE_AVG};

// Config_ADC - Set up the ADC
// Hits the ADC H/W registers directly to do some setup (Teensy 3.6 Specific)
// Enables the built in averaging function to get 32 smaple averaging
// Runs the calibration procedure described in teh manual (39.5.6)
void configADC(void)
{
  // 16 bit resolution
  analogReadResolution(16);

  // Set ADC for 32 sample average
  ADC0_SC3 |= 0x00000007;  // Set ADC to 32 averages mode
  ADC1_SC3 |= 0x00000007;  // Set ADC to 32 averages mode

  // Calibrate the ADC based on Ref Manual 39.5.6.
  ADC0_SC3 |= 0x00000080;
  while (ADC0_SC3 & 0x00000080); // Wait for cal to finish
  if ((ADC0_SC3 & 0x00000040) == 0) { // Cal sucess
    int i;
    i = (ADC0_CLP0 + ADC0_CLP1 + ADC0_CLP2 + ADC0_CLP3 + ADC0_CLP4 + ADC0_CLPS);
    i = i / 2;
    i = i | 0x00008000;
    ADC0_PG = i & 0x0000ffff;
    i = (ADC0_CLM0 + ADC0_CLM1 + ADC0_CLM2 + ADC0_CLM3 + ADC0_CLM4 + ADC0_CLMS);
    i = i / 2;
    i = i | 0x00008000;
    ADC0_MG = i & 0x0000ffff;
  }
  ADC1_SC3 |= 0x00000080;
  while (ADC1_SC3 & 0x00000080); // Wait for cal to finish
  if ((ADC1_SC3 & 0x00000040) == 0) { // Cal sucess
    int i;
    i = (ADC1_CLP0 + ADC1_CLP1 + ADC1_CLP2 + ADC1_CLP3 + ADC1_CLP4 + ADC1_CLPS);
    i = i / 2;
    i = i | 0x00008000;
    ADC1_PG = i & 0x0000ffff;
    i = (ADC1_CLM0 + ADC1_CLM1 + ADC1_CLM2 + ADC1_CLM3 + ADC1_CLM4 + ADC1_CLMS);
    i = i / 2;
    i = i | 0x00008000;
    ADC1_MG = i & 0x0000ffff;
  }
}

// get a sample and store it in the buffer
// Call at the sample rate (For example with
void getSample(void) {
  static int buf_ptr = 0;
  long val;

  val = analogRead(A9);
  noInterrupts();
  buff[buf_ptr] = val;
  interrupts();
  buf_ptr = (buf_ptr + 1) % samples;
}

// adcToV - Convert an ADC reading to Volts including offset and gain compensation
double adcToV(int a) {
  return (a - cfg.ofs) * cfg.gn;
}

// calcAvg - Calculate the average value of the buffer
double calcAvg(void) {
  double avg = 0;
  for (int i = 0; i < samples; i++) {
    avg += adcToV(buff[i]);
  }
  avg /= samples;
  return avg;
}

// calcRms - Calculate the RMS value of the buffer
double calcRms(void) {
  double avg = 0;
  for (int i = 0; i < samples; i++) {
    avg += pow(adcToV(buff[i]), 2);
  }
  avg /= samples;
  avg = sqrt(avg);
  return avg;
}

//dumpBuf - print the current buffer contents
void dumpBuf(void) {
  for (int i = 0; i < samples; i++) {
    Serial.println(buff[i]);
  }
  Serial.println();
}

// Convert a double between 0 and 99.99 to a string to send to the Sparkfun display including Clear and Decimal control
void printDoubleTo7seg(double x) {
  char buf[10];
  int i;
  buf[0] = 0x76; // Clear Display
  buf[1] = 0x77; // Decimal Control
  buf[2] = 0x02; // Just middle decimal
  //Serial.println(x);
  if (x < 0 || x > 99.99) {
    buf[3] = 0;
    return;
  }
  //Serial.print(x);Serial.println('\t');
  i = x / 10;
  buf[3] = '0' + i;
  x -= i * 10;
  //Serial.print(i);Serial.print('\t');Serial.println(x);
  i = x / 1;
  buf[4] = '0' + i;
  x -= i * 1;
  //Serial.print(i);Serial.print('\t');Serial.println(x);
  i = x / 0.1;
  buf[5] = '0' + i;
  x -= i * 0.1;
  //Serial.print(i);Serial.print('\t');Serial.println(x);
  i = x / 0.01;
  buf[6] = '0' + i;
  ; x -= i * 0.01;
  buf[7] = 0;
  //for (i = 0; i < 8; i++) {
  //  Serial.print(buf[i], HEX);
  //  Serial.print(' ');
  //}
  //Serial.println();
  //Serial.print("I2C Tx");
  Wire.beginTransmission(disp_i2c_addr);
  Wire.write(buf);
  Wire.endTransmission();
  //Serial.println(".");
}

// rawCalcAvg - Calculate the average value of the buffer in ADC counts for calibration
double rawCalcAvg(void) {
  double avg = 0;
  for (int i = 0; i < samples; i++) {
    avg += buff[i];
  }
  avg /= samples;
  return avg;
}

// Determines the offset and updates the offset value
// Short the inputs before running
void cal_zero(void) {
  delay(200);
  cfg.ofs = rawCalcAvg();
  Serial.print("New Ofs: "); Serial.println(cfg.ofs, 6);
  EEPROM.put(eeprom_ofs_addr, cfg.ofs);
  updateEepromCrc();
}

// Determines the system gain and updates the gain value
// Run cal_zero() first
// Apply 10.0 V DC to the input before running
void cal_10v(void) {
  delay(200);
  cfg.gn = cal_voltage / (rawCalcAvg() - cfg.ofs);
  Serial.print("New Gain: "); Serial.println(cfg.gn, 6);
  EEPROM.put(eeprom_gn_addr, cfg.gn);
  updateEepromCrc();
}

// Check CRC of EEPROM
int checkEepromCrc() {
  CRC32 crc;
  int i;
  uint32_t stored_crc;
  uint32_t calc_crc;

  // Retrieve CRC stored in EEPROM
  EEPROM.get(eeprom_crc_addr, stored_crc);

  // Calculate CRC of rest of EEPROM
  for(i=0;i<eeprom_crc_addr;i++) {
    crc.update(EEPROM.read(i));
  }
  calc_crc = crc.finalize();
  
  Serial.print("EEPROM Stored CRC: ");
  Serial.println(stored_crc, HEX);
  Serial.print("EEPROM Calc CRC:   ");
  Serial.println(calc_crc, HEX);
  return calc_crc==stored_crc;
}

// Set CRC of EEPROM
// Update data first...
void updateEepromCrc() {
  CRC32 crc;
  int i;
  uint32_t calc_crc;

  // Calculate CRC of EEPROM
  for(i=0;i<eeprom_crc_addr;i++) {
    crc.update(EEPROM.read(i));
  }
  calc_crc = crc.finalize();

  EEPROM.put (eeprom_crc_addr, calc_crc);
  
  Serial.print("Update EEPROM CRC:   ");
  Serial.println(calc_crc, HEX);
}


// Initial Setup
void setup() {
  // Serial Port Setup
  Serial.begin(115200);
  delay(1000);
  //while (!Serial) {
  //  ;
  //}

  // Print Banner
  Serial.println("Teensy Meter");
  Serial.print("Samples: "); Serial.println(samples);
  Serial.print("Sample Rate: "); Serial.print(sample_rate); Serial.println(" kHz");

  // Set up buttons
  // Use INPUT_PULLUP if you don't have external pullups
  Serial.print("Setting up buttons");
  pinMode(button_dc_pin, INPUT);
  pinMode(button_rms_pin, INPUT);
  pinMode(button_zero_pin, INPUT);
  pinMode(button_cal_pin, INPUT);
  Serial.println('.');

  // Set up the ADC
  Serial.print("Calibrating ADC");
  configADC();
  Serial.println('.');

  // Display calibration constants
  Serial.println("Calibration Constants:");
  if(checkEepromCrc()) {
    Serial.println("EEPROM Good - Using EEPROM values");
    EEPROM.get(eeprom_ofs_addr, cfg.ofs);
    EEPROM.get(eeprom_gn_addr, cfg.gn);
  } else {
    Serial.println("EEPROM Bad - Using Default values");
    cfg.ofs = default_ofs;
    cfg.gn  = default_gn;
  }  
  Serial.print("Offset: "); Serial.println(cfg.ofs, 6);
  Serial.print("Gain: "); Serial.println(cfg.gn, 6);

  // Start automatic sampling
  Serial.print("Starting sampling");
  t.begin(getSample, 1000000 / sample_rate); // Sample rate is in us
  Serial.println('.');

  // Start I2C Driver
  Serial.print("Starting I2C");
  Wire.begin();
  Serial.println('.');

  // Done setup
  Serial.println("Running...");
}

void loop() {
  double x;

  // Only update display every 200ms
  delay(200);

  // Handle button presses - no debounce
  if (digitalRead(button_dc_pin) == LOW) cfg.mode = MODE_AVG;
  if (digitalRead(button_rms_pin) == LOW) cfg.mode = MODE_RMS;
  if (digitalRead(button_zero_pin) == LOW) cal_zero();
  if (digitalRead(button_cal_pin) == LOW) cal_10v();

  //  dumpBuf();
  //  return;
  switch (cfg.mode) {
    case MODE_AVG:
      x = calcAvg();
      break;
    case MODE_RMS:
      x = calcRms();
      break;
    default:
      cfg.mode = MODE_AVG;
      x = -1.0;
  }
  printDoubleTo7seg(x);
  //if(cfg.mode == MODE_AVG) Serial.print("DC:  ");
  //if(cfg.mode == MODE_RMS) Serial.print("RMS: ");
  //Serial.println(x,6);
}

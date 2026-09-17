/*
 * PROJECT P02: Smart Blind Stick
 * STATUS: [RECONSTRUCTED]
 * 
 * This firmware was reconstructed during portfolio enhancement.
 * It is based strictly on the hardware parameters and concepts 
 * documented in the historical university report:
 * "A Smart Blind Stick using Arduino"
 * 
 * Hardware utilized:
 * - Arduino Nano / Uno
 * - HC-SR04 Ultrasonic Sensor
 * - Haptic Feedback (Vibration Motor)
 * - Acoustic Feedback (Buzzer)
 */

// --- Pin Definitions ---
const int TRIG_PIN = 9;
const int ECHO_PIN = 10;
const int MOTOR_PIN = 5;
const int BUZZER_PIN = 6;

// --- Thresholds (cm) ---
const int DISTANCE_SAFE = 150;
const int DISTANCE_WARNING = 100;
const int DISTANCE_CRITICAL = 50;

// --- Timing & State Variables ---
unsigned long previousMillis = 0;
const long INTERVAL_WARNING = 500;  // 500ms pulsing for warning
const long INTERVAL_CRITICAL = 150; // 150ms pulsing for critical
bool alertState = false;

void setup() {
  Serial.begin(9600);
  
  // Configure Pins
  pinMode(TRIG_PIN, OUTPUT);
  pinMode(ECHO_PIN, INPUT);
  pinMode(MOTOR_PIN, OUTPUT);
  pinMode(BUZZER_PIN, OUTPUT);
  
  // Initialize outputs to LOW
  digitalWrite(MOTOR_PIN, LOW);
  digitalWrite(BUZZER_PIN, LOW);
}

void loop() {
  long distance = getDistance();
  unsigned long currentMillis = millis();
  
  if (distance <= 0 || distance > DISTANCE_SAFE) {
    // --- Safe Zone ---
    // Out of range or safely distant
    digitalWrite(MOTOR_PIN, LOW);
    digitalWrite(BUZZER_PIN, LOW);
    alertState = false;
  } 
  else if (distance > DISTANCE_CRITICAL && distance <= DISTANCE_WARNING) {
    // --- Warning Zone ---
    if (currentMillis - previousMillis >= INTERVAL_WARNING) {
      previousMillis = currentMillis;
      alertState = !alertState;
      digitalWrite(MOTOR_PIN, alertState ? HIGH : LOW);
      digitalWrite(BUZZER_PIN, alertState ? HIGH : LOW);
    }
  } 
  else if (distance <= DISTANCE_CRITICAL) {
    // --- Critical Zone ---
    if (currentMillis - previousMillis >= INTERVAL_CRITICAL) {
      previousMillis = currentMillis;
      alertState = !alertState;
      digitalWrite(MOTOR_PIN, alertState ? HIGH : LOW);
      digitalWrite(BUZZER_PIN, alertState ? HIGH : LOW);
    }
  }
  else {
    // Distances between SAFE and WARNING (100cm - 150cm) 
    // Kept quiet to avoid overwhelming the user
    digitalWrite(MOTOR_PIN, LOW);
    digitalWrite(BUZZER_PIN, LOW);
  }
  
  // Delay to prevent ultrasonic interference between pings
  delay(50);
}

/**
 * Executes a sensor ping and calculates distance in cm.
 * Utilizes a 30ms timeout (approx 5 meters max distance) to remain non-blocking.
 * 
 * @return Distance in centimeters, or -1 if timeout occurs.
 */
long getDistance() {
  digitalWrite(TRIG_PIN, LOW);
  delayMicroseconds(2);
  
  digitalWrite(TRIG_PIN, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG_PIN, LOW);
  
  long duration = pulseIn(ECHO_PIN, HIGH, 30000); 
  
  if (duration == 0) {
    return -1; 
  }
  
  // Speed of sound is ~0.034 cm/us. Divide by 2 for round trip.
  return duration * 0.034 / 2;
}

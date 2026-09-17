# Hardware & Pinout Matrix

This document defines the electrical connections between the microcontroller and peripherals for the Smart Blind Stick.

## Pinout Mapping [RECONSTRUCTED]

| Component | Pin / Terminal | Arduino Pin | Notes |
| :--- | :--- | :--- | :--- |
| **HC-SR04** (Ultrasonic) | VCC | 5V | Power for sensor |
| | GND | GND | Ground reference |
| | TRIG | D9 | Trigger pulse output |
| | ECHO | D10 | Echo pulse input |
| **Vibration Motor** | Positive (+) | D5 | Haptic feedback output (via NPN transistor driver) |
| | Negative (-) | GND | Ground |
| **Active Buzzer** | Positive (+) | D6 | Acoustic feedback output |
| | Negative (-) | GND | Ground |

## Power Circuitry

The system utilizes a portable 300mAh Lithium-ion battery combined with a TP4056 Type-C USB charging module. 
The connections are isolated from the data logic:

- **Battery (+) / (-)** $\rightarrow$ **TP4056 B+ / B-**
- **TP4056 OUT+ / OUT-** $\rightarrow$ **Arduino Vin / GND** (Powers the entire logical circuit)

*Note: The vibration motor should ideally be driven through an NPN transistor (e.g., 2N2222) with a flyback diode to prevent inductive spikes from damaging the Arduino GPIO pins. Direct connection is possible for very low-current coin motors, but not recommended for robust industrial design.*

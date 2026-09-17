# P02: Smart Blind Stick using Arduino

## Problem Statement & Context
Blindness and visual impairment significantly impact independent mobility and navigation. The traditional white cane, while foundational, is limited in its ability to detect obstacles beyond physical reach. This project outlines an assistive mechatronic device—a "Smart Blind Stick"—that augments the traditional cane with ultrasonic object detection, granting the user enhanced environmental awareness and early obstacle warning without requiring visual cues.

## System Architecture

The system revolves around an **Arduino Nano/Uno** microcontroller that acts as the central processing unit. An **HC-SR04 ultrasonic sensor** continuously scans the environment for obstacles. When an obstacle falls within predefined threshold zones (Warning or Critical), the system triggers multimodal alerts:
1. **Acoustic Feedback**: Through an active buzzer.
2. **Tactile/Haptic Feedback**: Through a DC vibration motor.

Power is supplied via a 300mAh Lithium-ion battery managed by a **TP4056 Type-C** charging circuit, ensuring the device is portable and easily rechargeable.

### Verified Bill of Materials (BOM) [VERIFIED]
*Sourced directly from historical academic documentation:*
- Microcontroller: Arduino Uno / Nano
- Distance Sensor: HC-SR04 Ultrasonic Sensor
- Haptic Feedback: DC Vibration Motor
- Acoustic Feedback: Active Buzzer
- Power Source: 300mAh Lithium-ion Battery
- Power Management: TP4056 Type-C USB Charging Module

## Repository State & Transparency
- **`docs/`**: Contains the historical draft report and academic submissions. **[VERIFIED]**
- **`firmware/`**: Contains the microcontroller source code. Because the original source code artifact was missing from the archive, this code has been **[RECONSTRUCTED]** during portfolio development based strictly on the verified hardware parameters and methodology outlined in the historical documentation.
- **`hardware/`**: Contains the reconstructed pinout mappings and circuit explanations. **[RECONSTRUCTED]**

## Operational Logic
The firmware utilizes non-blocking timer logic to evaluate distance bounds efficiently:
- **Safe Zone (> 100 cm)**: No alerts.
- **Warning Zone (50 cm - 100 cm)**: Slow pulsating buzzer and vibration (500ms intervals).
- **Critical Zone (< 50 cm)**: Fast pulsating buzzer and vibration (150ms intervals).

# radarJL: Altimeter RADAR System Simulation
## Overview
This project models and simulates an altimeter radar system using Julia, focusing on the basic principles of radar technology and altitude determination. The current version is a low fidelity model, designed for educational purposes and initial prototyping. Future phases will enhance the model’s fidelity by integrating more complex dynamics and realistic conditions.

## RADAR Parameters
* Center frequency: 4.3 GHz
* Bandwidth: 150 MHz
* Pulse repetition frequency (PRF): 143
* Beamwidth: 40°
* Transmitter power: 0.4 W
* Highest altitude required: 1676 m
* Sweep direction of the FMCW waveform: Triangle
* Receiver noise figure: 8 dB

Radar parameters were extracted based on Table 2 in [ITU recommendation document](https://www.itu.int/dms_pubrec/itu-r/rec/m/R-REC-M.2059-0-201402-I!!PDF-E.pdf)

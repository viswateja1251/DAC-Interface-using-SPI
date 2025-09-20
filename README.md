# DAC Interface using SPI (Vivado) Overview  

This project implements a **Digital-to-Analog Converter (DAC) interface** using the **Serial Peripheral Interface (SPI)** protocol in Verilog HDL on Xilinx Vivado. The design enables digital systems to communicate with an external DAC, converting digital input values into corresponding analog outputs for real-world applications.  

---

## Features  

- **SPI-based communication** (Master mode).  
- **Configurable data word length** for DAC resolution.  
- **Clock generation for SPI `PMOD_SCLK`** (from system clock).  
- **Chip Select (`PMOD_CS`) handling** for DAC interfacing.  
- **Reset functionality** for safe initialization.  
- **Testbench included** for simulation and verification.  

---

## Project Structure  


---

## Design Details  

- **SPI Signals:**  
  - `PMOD_MOSI` → Transfers serial data to DAC.  
  - `PMOD_SCLK` → Serial clock generated from system clock.  
  - `PMOD_CS` → Chip Select to activate DAC communication.  

- **Operation:**  
  - Data word is shifted out on `PMOD_MOSI` line at each clock edge.  
  - `PMOD_CS` is asserted low during transmission.  
  - DAC latches the received digital word to update its analog output.  

- **Reset:** Clears SPI registers and ensures a safe starting state.  

---

## Simulation & Verification  

1. Launch Vivado and open the project.  
2. Run **behavioral simulation**.  
3. Observe SPI communication in the waveform viewer:  
   - Correct shifting of data on `PMOD_MOSI`.  
   - Proper timing of `PMOD_CS` and `PMOD_SCLK`.  
   - DAC receives valid word sequence.  
4. Verify reset clears registers.  

---

## Synthesis & Implementation  

1. Open Vivado → Create Project → Add `dac_spi.v`.  
2. Run **Synthesis and Implementation**.  
3. Generate **Bitstream** if targeting FPGA deployment.  
4. Use **Hardware Manager** to program FPGA (optional).  

---

## Applications  

- Driving external DACs for **analog signal generation**.  
- **Audio signal processing** (digital-to-analog conversion).  
- **Sensor interfacing** with analog outputs.  
- Mixed-signal **communication systems**.  

---

## Requirements  

- Xilinx Vivado 2020.2+ (or compatible).  
- Target FPGA board (optional for hardware testing).  
- Basic knowledge of Verilog HDL and SPI protocol.  

---

## Author  

Designed and tested by **Mummaneedi Viswateja**  
B.Tech in **Electronics and Communication Engineering**,  
**IIT (ISM) Dhanbad**  

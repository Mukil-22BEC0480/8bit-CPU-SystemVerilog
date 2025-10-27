# 8bit-CPU-SystemVerilog
A simple 8-bit RISC-style CPU implemented in SystemVerilog with automated simulation using Python and Icarus Verilog.
---

## Overview
This project demonstrates the RTL design and verification of a minimal **8-bit RISC-style CPU**.  
It integrates key digital design concepts including an **ALU**, **register file**, **memory**, and a **control unit** — all connected through a simple datapath.

Python scripting is used to automate the compilation and simulation process, making it an efficient verification setup suitable for both learning and professional demonstration.

---

## Features
- 8-bit **Arithmetic Logic Unit (ALU)**
- Simple **Control Unit** for instruction sequencing
- **Register File** with read/write functionality
- **Memory module** for instruction/data storage
- **Top-level CPU integration (cpu_top.v)**
- **SystemVerilog Testbench** for automated testing
- **Python Automation Script** (`run_cpu.py`)
- Generates waveform output (`cpu_wave.vcd`) viewable in GTKWave

---

## File Structure
📁 CPU_Project/
├── alu.v # 8-bit ALU module
├── control_unit.v # Control unit FSM
├── reg_file.v # 8-bit register file
├── memory.v # Simple instruction/data memory
├── cpu_top.v # CPU integration top module
├── tb_cpu.sv # SystemVerilog testbench
├── run_cpu.py # Python script to automate compilation/simulation
├── cpu_wave.vcd # Simulation waveform file
└── README.md # Project documentation


---

## How to Run

### Install Tools
- **Icarus Verilog** (for compilation and simulation)  
- **Python 3.x** (for automation script)  
- **GTKWave** (for viewing waveforms)

### Run Simulation
```bash
python run_cpu.py

This script will:

Compile all SystemVerilog/Verilog files

Run the simulation

Generate cpu_wave.vcd

### View Waveform

Once the simulation finishes:

gtkwave cpu_wave.vcd




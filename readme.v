# Parking Management System using Verilog

## Description
This project implements a simple Parking Management System using Verilog HDL.

## Features
- Counts available parking slots
- Detects car entry and exit
- Displays parking full condition
- Simulated using Verilog testbench

## Files
- parking_sys.v → Main design module
- tb.v → Testbench file

## Tools Used
- Verilog HDL
- EDA Playground / ModelSim / Vivado

## Working
- Car entry decreases available slots
- Car exit increases available slots
- FULL signal becomes HIGH when slots become zero
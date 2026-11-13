# PROJECT 06 – Smart Parking Management System

## 1. Project Overview

The Smart Parking Management System is a digital design project developed using Verilog HDL.

The system manages parking slot availability by monitoring vehicle entry and exit requests. It maintains the number of available parking slots and indicates whether the parking area is full or empty.

## 2. Project Objective

To design a digital parking management system that automatically tracks available parking spaces using sequential logic and counter operations.

## 3. Project Specifications

| Parameter | Description |
|---|---|
| Project Name | Smart Parking Management System |
| HDL | Verilog |
| Simulation Tool | QuestaSim 10.7c |
| Parking Capacity | 10 Vehicles |
| Counter Width | 4 Bits |
| Design Type | Sequential Logic |

## 4. Features

- Vehicle Entry Management
- Vehicle Exit Management
- Available Parking Slot Counter
- Parking Full Detection
- Parking Empty Detection
- Entry Permission Indicator
- Exit Permission Indicator
- Overflow and Underflow Protection
- Simultaneous Entry and Exit Handling

## 5. Input Signals

| Signal | Description |
|---|---|
| clk | Clock input |
| rst | Reset input |
| entry | Vehicle entry request |
| exit | Vehicle exit request |

## 6. Output Signals

| Signal | Description |
|---|---|
| available_slots | Number of available parking slots |
| parking_full | Indicates parking is full |
| parking_empty | Indicates parking is empty |
| entry_allowed | Indicates whether entry is permitted |
| exit_allowed | Indicates whether exit is permitted |

## 7. Working Principle

1. Initially, all 10 parking slots are available.
2. When a vehicle enters, the available slot count decreases by one.
3. When a vehicle exits, the available slot count increases by one.
4. When all slots are occupied, the parking full signal is activated.
5. When all slots are available, the parking empty signal is activated.
6. Simultaneous entry and exit requests do not change the available slot count.

## 8. Project Structure

```text
PROJECT_06_Smart_Parking/
│
├── RTL/
│   └── smart_parking.v
│
├── Testbench/
│   └── smart_parking_tb.v
│
└── Simulation/
    └── wave.do
```

## 9. Tools Used

- Verilog HDL
- QuestaSim 10.7c
- RTL Simulation
- Waveform Analysis

## 10. Concepts Learned

- Sequential Logic Design
- Counters
- Clock and Reset
- Conditional Statements
- RTL Design
- Testbench Development
- Functional Simulation

## 11. Future Enhancements

- Improved vehicle entry and exit detection
- SystemVerilog-based verification
- Self-checking testbench
- Assertions and Functional Coverage

## 12. Author

VLSI Digital Design and Verification Learner

**Project Status:** Basic Verilog RTL design and simulation completed.

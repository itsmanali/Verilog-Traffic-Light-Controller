# Verilog-Traffic-Light-Controller
A simple 3-state (Red, Yellow, Green) traffic light controller implemented in Verilog and simulated on EDA Playground


//Project Overview
This project implements a Finite State Machine (FSM) for a standard traffic light controller using Verilog HDL. The design cycles through three states (Green, Yellow, and Red) based on a clock-driven counter logic. This is a foundational VLSI project demonstrating sequential logic design and hardware simulation.


//Hardware Architecture
-The system is designed as a Moore Machine where the output (the light color) depends solely on the current state.


-State Transitions:
S_GREEN (00): The "Go" state.
S_YELLOW (01): The "Caution" state.
S_RED (10): The "Stop" state.

//Design Specifications
Language: Verilog-2012
Simulation Tool: EDA Playground
Compiler: Icarus Verilog 12.0
Waveform Viewer: EPWave
Synthesis Tool: Yosys (for RTL Schematic generation)


//File Structure
design.sv: Contains the structural hardware logic, state registers, and transitions.
testbench.sv: The simulation environment that generates the clock signal and monitors the outputs.


//Simulation Results
The simulation verifies the timing and sequence of the lights. Below is the logic mapping:

3'b001 (Decimal 1) -> Green LED ON
3'b010 (Decimal 2) -> Yellow LED ON
3'b100 (Decimal 4) -> Red LED ON


//How to Run on EDA Playground
1.Open EDA Playground.
2.Copy the code from design.sv and testbench.sv into the respective windows.
3.On the left sidebar, select Icarus Verilog 12.0.
4.Check the box "Open EPWave after run".
5.Click Run.


//RTL Schematic
The synthesis of this Verilog code results in a circuit consisting of a 2-bit state register, a 4-bit counter, and combinational logic gates (AND/OR/MUX) to control the state transitions.

Developed by: Manali Parmar
Electronics Engineering Student

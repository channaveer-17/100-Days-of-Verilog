# Project 01 - 2:1 Multiplexer (MUX)

## Project Overview
A 2:1 Multiplexer is a digital circuit
that selects one of two inputs and sends
it to a single output.

## Inputs
- A: Input 1
- B: Input 2
- S: Select Line

## Output
- Y: Output

## Truth Table

| S | A | B | Y |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 0 |

## Boolean Expression

Y = S'A + SB

## Tools Used
- Icarus Verilog
- GTKWave
- Visual Studio Code

## Project Files
- mux.v : Verilog design code
- mux_tb.v : Testbench

## Simulation Commands

Compile:
iverilog -o mux.exe mux.v mux_tb.v

Run:
vvp mux.exe

Waveform:
gtkwave mux.vcd

## Learning Outcome
Learned the working principle of
a 2:1 Multiplexer using Verilog.

## Project Status
Completed
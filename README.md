# Digital-Logic-Basics
Synthesizable digital logic components designed in Vivado.

---

## 1. Basic Logic Gates

## Simulation Results

The following waveform verifies the truth table functionality for all logic gates:

![Logic Gates Waveform](all_gates_waveform.png)

**Waveform Legend:**
* **a, b**: Inputs
* **y1**: NAND (Returns 0 only when both inputs are 1)
* **y2**: AND (Returns 1 only when both inputs are 1)
* **y3**: OR (Returns 1 if any input is 1)
* **y4**: NOT a (Inverts input a)
* **y5**: NOT b (Inverts input b)
* **y6**: XOR (Returns 1 if inputs are different)
* **y7**: XNOR (Returns 1 if inputs are the same)


---

## Synthesis (RTL Schematic)
The following circuit diagram shows the synthesized hardware implementation:

![Logic Gates Schematic](all_gates_schematic.png)


---

## 2. 2:1 Multiplexer
This module selects between two 4-bit input buses based on a single select line.

### Simulation Results
The following waveform verifies that the output correctly switches between input `i0` and `i1` based on the select line `s0`.

![2:1 MUX Waveform](mux2_1_waveform.png)

**Waveform Legend:**
* **s0**: Select Line (0 selects 'i0', 1 selects 'i1')
* **i0**: Input Bus 0 (Value: 0)
* **i1**: Input Bus 1 (Value: 1)
* **y**: Output Bus

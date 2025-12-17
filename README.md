# Digital-Logic-Basics
Synthesizable digital logic components designed in Vivado.

---

## 1. Basic Logic Gates

### Simulation Results

The following waveform verifies the truth table functionality for all logic gates:

![Logic Gates Waveform](01_Basic_Gates/all_gates_waveform.png)

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

### Synthesis (RTL Schematic)
The following circuit diagram shows the synthesized hardware implementation:

![Logic Gates Schematic](01_Basic_Gates/all_gates_schematic.png)

---

## 2. 2:1 Multiplexer
This module selects between two 4-bit input buses based on a single select line.

### Simulation Results
The following waveform verifies that the output correctly switches between input `i0` and `i1` based on the select line `s0`.

![2:1 MUX Waveform](02_Mux_2_1/mux2_1_waveform.png)

**Waveform Legend:**
* **s0**: Select Line (0 selects 'i0', 1 selects 'i1')
* **i0**: Input Bus 0 (Value: 0)
* **i1**: Input Bus 1 (Value: 1)
* **y**: Output Bus

---


### Synthesis (RTL Schematic)
The following circuit diagram shows the synthesized hardware implementation, confirming 4-bit data paths and multiplexing logic:

![2:1 MUX Schematic](02_Mux_2_1/mux2_1_schematic.png)

---



## 3. 4:1 Multiplexer
This module selects between four 3-bit input buses based on a 2-bit select line.

### Simulation Results
The following waveform verifies the selection logic across all four channels:

![4:1 MUX Waveform](03_Mux_4_1/mux4_1_waveform.png)

**Waveform Legend:**
* **s1, s0**: Select Lines (00->i0, 01->i1, 10->i2, 11->i3)
* **i0 - i3**: 3-bit Input Data Buses
* **y**: Output Bus


---


### Synthesis (RTL Schematic)
The following circuit diagram shows the synthesized hardware implementation, confirming the 4:1 multiplexing logic and 3-bit data paths:

![4:1 MUX Schematic](03_Mux_4_1/mux4_1_schematic.png)

---


## 4. 1:4 Demultiplexer
This module routes a single 3-bit input bus to one of four output buses based on a 2-bit select line.

### Simulation Results
The following waveform demonstrates the input data (Value: 5) being routed to outputs y0 through y3 sequentially:

![1:4 DEMUX Waveform](04_Demux_1_4/demux1_4_waveform.png)

**Waveform Legend:**
* **i**: Input Data Bus (Fixed at value 5)
* **s1, s0**: Select Lines
* **y0 - y3**: Output Buses

---

### Synthesis (RTL Schematic)
The following circuit diagram shows the synthesized hardware implementation, confirming the 1-to-4 data routing logic:

![1:4 DEMUX Schematic](04_Demux_1_4/demux1_4_schematic.png)

---


## 5. D Flip-Flop (Async Reset, Sync Enable)
This module implements a standard D Flip-Flop with an active-high asynchronous reset and a synchronous enable signal.

### Simulation Results
The following waveform demonstrates synchronous loading (when en=1), state holding (when en=0), and asynchronous reset priority:

![D Flip-Flop Waveform](05_D_Flip_Flop/d_ff_waveform.png)

**Waveform Legend:**
* **clk**: Clock Signal (100 MHz)
* **reset**: Asynchronous Reset (Active High)
* **en**: Enable Signal
* **d**: Data Input
* **q**: Data Output

---

### Synthesis (RTL Schematic)
The following circuit diagram confirms the synthesis of a D-Flip Flop with dedicated Clock Enable (CE) and Asynchronous Clear (CLR) pins:

![D Flip-Flop Schematic](05_D_Flip_Flop/d_ff_schematic.png)


---

## 6. D-Latch (Async Reset, Level-Sensitive Enable)

This module implements a transparent D-Latch with an active-high asynchronous reset and a level-sensitive enable signal.

### Simulation Results

The following waveform validates the circuit's operation. It demonstrates the transparency phase (when en=1), state retention (when en=0), and the immediate priority of the asynchronous reset:

![D-Latch Waveform](06_D_Latch/D_Latch_waveform.png)

**Waveform Legend:**

* **reset**: Asynchronous Reset (Active High)
* **en**: Enable Signal (Level Sensitive)
* **d**: Data Input
* **q**: Data Output


---



### Synthesis (RTL Schematic)
The following circuit diagram shows the synthesized hardware implementation, confirming the basic latch structure with the asynchronous reset path:

![D-Latch Schematic](06_D_Latch/d_latch_schematic.png)



---

## 7. 8:3 One-Hot Encoder
This module encodes an 8-bit one-hot input vector into a 3-bit binary output. It utilizes a `case` statement with a default clause to prevent unintentional latch inference during synthesis.

### Simulation Results
The following waveform confirms the correct binary encoding for each active-high bit position in the input vector:

![Encoder Waveform](07_Encoder_8_3/encoder8_3_waveform.png)

**Waveform Legend:**
* **a**: 8-bit One-Hot Input
* **y**: 3-bit Binary Output


---

### Synthesis (RTL Schematic)
The following circuit diagram shows the synthesized hardware implementation. The tool inferred a Read-Only Memory (RTL_ROM) structure to implement the look-up table logic, confirming a purely combinational design:

![Encoder Schematic](07_Encoder_8_3/encoder8_3_schematic.png)



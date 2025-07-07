# Booth's Multiplication Algorithm (8-bit Signed) – Verilog Implementation

This project provides a Verilog-based implementation of **Booth’s Multiplication Algorithm** for multiplying two 8-bit signed binary numbers in **two's complement format**. Booth's method offers a more efficient way to handle multiplication by reducing the number of additions/subtractions required.

---

## What is Booth’s Algorithm?

Booth's algorithm is a binary multiplication algorithm that handles **signed numbers** efficiently using two's complement representation. It scans the multiplier bits in pairs (current bit and a previous bit) and minimizes arithmetic operations depending on transitions between 0 and 1.

### ⚙️ Key Concepts:
- **Fewer operations** for consecutive 1s in the multiplier
- Efficient use of **addition, subtraction, and shifting**
- Suitable for **signed binary numbers**

---

## 📌 Algorithm Procedure (Manual Steps)

Given:
- M: Multiplicand (8-bit signed)
- Q: Multiplier (8-bit signed)
- A: 8-bit accumulator (initially 0)
- Q_1: 1-bit register (initially 0)

Repeat for 8 steps:
1. Check the pair {Q[0], Q-1}:
   - 10 → Perform A = A - M
   - 01 → Perform A = A + M
   - 00 or 11 → Do nothing
2. Perform an **arithmetic right shift** on `{A, Q, Q-1}.
3. Repeat for all bits of the multiplier.

Final product is contained in {A, Q} (16-bit signed result).

---

## 📁 Files Included

| File              | Description                              |
|-------------------|------------------------------------------|
| booth_algo.v    | Core Verilog module (Booth’s Multiplier) |
| testbench.v    | Testbench with multiple signed test cases|
| booth_file.vcd  | Waveform dump for GTKWave visualization  |

---

## 🧪 Simulation

### ✅ Inputs:
- Multiplicand : 8-bit signed input
- Multiplier   : 8-bit signed input
- start        : High for 1 cycle to begin multiplication
- clk          : Clock signal

### 🟢 Outputs:
- Result       : 16-bit signed product
- in_process   : High when multiplication is ongoing

### Simulation Example:

```verilog
a = 8'd12;
b = -8'd3;
start = 1; #10 start = 0;
// Result = -36 (in 16-bit two's complement)# Booths_Algorithm

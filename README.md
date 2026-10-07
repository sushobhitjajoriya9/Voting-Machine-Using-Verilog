# Verilog Voting Machine Project

## Code

[EDA Playground – Voting Machine](https://www.edaplayground.com/x/Qxvc)

## Overview

This project implements a simple **Digital Voting Machine using Verilog HDL**. The design supports voting for three candidates and keeps track of the number of votes received by each candidate.

The voting machine increments the corresponding vote counter whenever a valid vote input is received. A reset signal is provided to clear all vote counts and start a new voting session.

## Features

* Supports voting for **three candidates**.
* Maintains an independent vote count for each candidate.
* Increments the selected candidate's vote count when a vote is cast.
* Provides a **reset** function to clear all vote counts.
* Includes a Verilog **testbench** for functional verification.
* Can be simulated using **EDA Playground, Icarus Verilog, ModelSim, or Xilinx Vivado**.
* Waveforms can be viewed using **GTKWave** or any compatible VCD viewer.

## Project Files

| File                  | Description                                             |
| --------------------- | ------------------------------------------------------- |
| `voting_machine.v`    | Main Verilog module containing the voting machine logic |
| `tb_voting_machine.v` | Testbench used to verify the voting machine             |

## Working Principle

The voting machine operates using the following signals:

* **`clk`** – Clock signal used for synchronous operation.
* **`rst`** – Reset signal that clears all vote counters.
* **`vote_C1`** – Input pulse to cast a vote for Candidate 1.
* **`vote_C2`** – Input pulse to cast a vote for Candidate 2.
* **`vote_C3`** – Input pulse to cast a vote for Candidate 3.
* **Candidate 1 Count** – Stores the total votes received by Candidate 1.
* **Candidate 2 Count** – Stores the total votes received by Candidate 2.
* **Candidate 3 Count** – Stores the total votes received by Candidate 3.

When a candidate's vote input is activated, the corresponding counter is incremented by one on the active clock edge.

When `rst` is activated, all vote counters are reset to zero.

## How to Run the Project

### 1. Run on EDA Playground

1. Open the [EDA Playground](https://www.edaplayground.com/).
2. Open the project using the EDA Playground link given above.
3. Select **Icarus Verilog** as the simulator.
4. Run the simulation.
5. Observe the simulation output and waveform.

### 2. Run Locally

You can simulate the project using **Icarus Verilog**, **ModelSim**, or **Xilinx Vivado**.

Clone the repository:

```bash
git clone https://github.com/your-username/verilog-voting-machine.git
cd verilog-voting-machine
```

For Icarus Verilog, compile the Verilog files:

```bash
iverilog -o voting_machine_sim voting_machine.v tb_voting_machine.v
```

Run the simulation:

```bash
vvp voting_machine_sim
```

## Waveform Generation

To generate a waveform for analysis, include the following commands in the testbench:

```verilog
$dumpfile("voting_machine.vcd");
$dumpvars(0, tb_voting_machine);
```

Then run the simulation. A `.vcd` waveform file will be generated.

You can open the waveform using **GTKWave**:

```bash
gtkwave voting_machine.vcd
```

## Example Waveform

The waveform allows you to observe the following signals:

* `clk` – Continuous clock signal.
* `rst` – Reset signal.
* `vote_C1` – Vote input for Candidate 1.
* `vote_C2` – Vote input for Candidate 2.
* `vote_C3` – Vote input for Candidate 3.
* Candidate vote counters – Display the updated vote totals.

![Voting Machine Waveform](https://private-user-images.githubusercontent.com/183619819/372887726-7230471f-9568-4ae3-99a9-1f1419baa1e0.png)

## Expected Result

During simulation:

1. Initially, the reset signal clears all vote counters.
2. A pulse on `vote_C1` increments Candidate 1's vote count.
3. A pulse on `vote_C2` increments Candidate 2's vote count.
4. A pulse on `vote_C3` increments Candidate 3's vote count.
5. Multiple votes increase the corresponding candidate's counter.
6. Activating `rst` clears all vote counts back to zero.

## Applications

This project demonstrates the basic concept of a digital voting system and can be extended for:

* FPGA-based voting machines.
* Digital election systems.
* RTL and Verilog learning projects.
* Hardware design and simulation practice.
* Candidate selection and vote-counting systems.

## Technologies Used

* **Verilog HDL**
* **EDA Playground**
* **Icarus Verilog**
* **GTKWave**
* **Xilinx Vivado / ModelSim** (optional)

## Author

**Sushobhit Jajoriya**

---

⭐ If you find this project useful, consider giving the repository a **star**!

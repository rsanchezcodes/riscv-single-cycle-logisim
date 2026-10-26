# Circuits

| File | Description |
|------|-------------|
| `VeryHardWareRISCV.circ` | The complete single-cycle processor: main circuit `RISCV` and subcircuit `Control Unit` |
| `RISCVlib.circ` | **Not included.** Component library provided in the course (ALU, register file, memories, extender, ALU control, PC, ClockGen). It must be placed here for the processor to open. |
| `instmem.txt` | Instruction memory image, loaded on reset (currently the SAD program) |
| `datamem.txt` | Data memory image, loaded on reset (currently the lab example for SAD, n = 4, expected result 8) |

All four files must be in this folder. Logisim loads the library by relative path, and the memories load the two `.txt` files when the simulation is reset.

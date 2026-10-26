# Test programs

Each program has its assembly source (`.s`) and the memory images loaded into Logisim. To run one, copy its `instmem.txt` and a data file (renamed to `datamem.txt`) into `circuits/`, then reset the simulation.

The images use Logisim's `v2.0 raw` format: one 32-bit word per line, in hexadecimal. The assembly was assembled with RARS (compact memory configuration, data at address 0), and the custom `halt` (`0000007f`) was appended to the instruction image by hand.

| Program | What it tests | Data file | Expected result |
|---------|---------------|-----------|-----------------|
| `sad/` | Sum of absolute differences of two vectors A and B: `lw`, `sw`, `beq`, `jal` (`j`), `add`, `sub`, `slt`, `addi`, `halt` | `datamem.txt` (data from `sad.s`, n = 5) | `RAM[0xC] = 10` |
| | | `datamem-n4.txt` (lab example, n = 4) | `RAM[0xC] = 8` |

Memory layout required by the assignment: `0x10` holds n, `0x14` holds the address of A, vector B starts right after A, and the result is written to `0xC`. Addresses `0x0`–`0x8` are free for the program to use.

.data
.word 0, 0, 0 #//free space for your use
.word 0 #//result
.word 5 #//n – number of elements of A and B
.word 28 #//address vector A
.word 0
.word 23, -4, 6, 1, -1 #//data vector A
.word 20, -2, 4, -1, 0 #//data vector B

.text
main:
 lw x1, 20(zero)	#address
 addi x2, zero, 0	#counter
 lw x3, 16(zero)	#limit
 addi x4, x1, 0		#separation
 
 nLoop:
  beq x2, x3, endNLoop
  addi x4, x4, 4
  addi x2, x2, 1
  j nLoop
 endNLoop:
  sub x2, x2, x3
  addi x5, zero, 0	#accumulator
  addi x9, zero, 1	#isNegative?
 
 loop:
  beq x2, x3, endLoop
  lw x6, 0(x1)		#A[i]
  lw x7, 0(x4)		#B[i]
  
  slt x8, x6, x7
  beq x8, x9, isNegative
  
  sub x10, x6, x7
  j endNegative
  
  isNegative:
  sub x10, x7, x6
  
  endNegative:
  addi x2, x2, 1
  addi x1, x1, 4
  addi x4, x4, 4
  add x5, x5, x10
  
 j loop
 endLoop:
 sw x5, 12(zero)

# halt # Code by hand; is not a RISCV instruction

# in this program try to make a normal matrix to a transpose matrix 

.data 
	matrix: .word 12, 74, 06, 07, 99, 10, 11, 16, 00, 03, 20, 21
	row:	.word 3
	coloum: .word 4
	
.text
	la t0, matrix
	lw t1, row 
	lw t2, coloum    #there is a problem with row and coloum in this problem

loop:
	lw t3, 0(t0)
	addi sp, sp, -8
	sw ra, 0(sp)
	sw t3, 4(sp)		 	##using the stack pointer for store the value 
	addi t0, t0, 16
	addi t2, t2, -1
	bnez t2, loop
	addi t1, t1, -1
	lw t2, coloum
	lw a0, 4(sp)
	lw ra, 0(sp)
	addi sp, sp, 8
	jal ra, print
	bnez t1, loop
	
	

 print:
 	li a7, 1
 	ecall
 exit:
 	li a7, 10
 	ecall
   
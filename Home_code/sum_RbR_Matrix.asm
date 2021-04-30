# in this program try to sum row by row the elements of the matirx

.data 
	matrix: .word 4, 7, -2, 5
		.word 0, 1, 0, -5
		.word 1, 5, 8, 0
	row: 	.word 3
	coloum: .word 4

.text 
	la t0, matrix
	lw t1, row
	lw t2, coloum
	li s0, 0

loop: 
	lw t3, 0(t0)
	add s0, s0, t3
	addi t0, t0, 4
	addi t2, t2, -1
	bne t2, zero, loop
	addi t1, t1, -1
	lw t2, coloum
	bnez t1, loop
	mv a0, s0
	jal ra , exit
exit:
	li a7, 1
	ecall
	li a7, 10
	ecall
	
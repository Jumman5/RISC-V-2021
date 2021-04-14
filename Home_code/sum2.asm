#another way to sum two number

.data
	.word 9
	.word 11

.text
	lui s0, 0x10010
	lw t0, 0(s0)
	lw t1, 4(s0)
	add a0, t0, t1
	li a7, 1
	ecall
	li a7, 10
	ecall
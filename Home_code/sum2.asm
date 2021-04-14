#another way to sum two number

.data
	.word 9
	.word 11

.text
	lui s0, 0x10010 # also able to use la s0 , x/y 
	lw t0, 0(s0)	#load first number from address
	lw t1, 4(s0)	# load second number from address
	add a0, t0, t1  # for printing return should be a0, a1
	li a7, 1	# print	
	ecall
	li a7, 10	#exit
	ecall

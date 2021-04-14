#print the sum of an array

.data 
	arr: .word 5, 7, 7, -2, 0, 1, 1
	size: .word 7
	
.text
	lui a0, 0x10010  #pluging a0 as initial data segment of array
	lw t1, size
	jal loop
	
	li a7, 1
	ecall
	li a7, 10
	ecall
	


loop:
	lw t2 , 0(a0)
	add t0, t0, t2
	addi a0, a0, 4
	addi t1, t1, -1
	bne t1, zero, loop
	mv a0, t0
	jalr zero, ra, 0
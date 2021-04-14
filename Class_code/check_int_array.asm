# there is two sorted arrays . check if there is a number which appers in both lists/ arrays.

.data
	list1: .word -2, 1, 7, 9
	list2: .word 5, 7, 11

.text
	lw s0, list1 	# loading the  list by using pseudo instruction
	lw s1, list2
	li a0, 0

loop:
	beqz t0, exit		# if t0 == 0 --> exit ## checking if the list is zero
	beqz t1, exit
	lw t2, 0(s0)
	lw t3, 0(s1)
	bne t1, t2, skip
	li a0, 1
	j exit
skip:
	ble t1, t2, skip2
	lw s1, 4(s1)
	#addi t1, t1, 4 
	j loop
skip2:
	lw s0, 4(s0)
	#addi t0, t0, 4
	j loop
exit:
	li a7, 1
	ecall
	li a7, 10
	ecall

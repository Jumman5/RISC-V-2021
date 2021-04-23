#collatz conjucture 
#in python
#	n= 9
#	if n%2 == 0:
#		n = n/2
#	else:
#		n = 3*n + 1
#Now implemeanting this in RISC-V 

.data
	n: .word 9

.text
	lw a0, n 	# a pseudo instruction of li/ lui
	
IF:
	andi a1, a0, 1	# bit-by-bit and operation last operation check even or odd
	bnez a1, Else
Then:
	srai a0, a0, 2	# n=n/2
	j End
Else:
	slli a1, a0, 1		# multiplycation by 2
	add a0, a1, a0		# now add the same and become 3 times mul
	addi a0, a0, 1
	j End
End:
	li a7, 1	#print
	ecall
	li a7, 10	#exit
	ecall
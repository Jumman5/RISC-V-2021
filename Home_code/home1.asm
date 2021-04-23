 #This program about start and 

.data
	mesg1:
		.string "Hello World !"
		.byte 0
		
.text
	la a0, mesg1
	#jal a0, mesg1
	li a7, 4
	ecall
	j shutDown
		
shutDown:
	li a7, 10
	ecall
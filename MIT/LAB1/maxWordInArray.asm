# def maximum(p, n):
# largest_so_far = 0
# while n != 0:
# w = load_word(p)
# if w > largest_so_far:
# largest_so_far = w
# p = p + 4
# n = n - 1
# return largest_so_far

## implimenating this python program in RISC-V
.data
	array: .word 2, 11, 9, 2, 3, 15, 17, 19, 2, 5, 9, 15
	len: .word 12
.text
	la a0, array
	lw a1, len
	li a3, 0
	
loop:
	lw a2, 0(a0)
	addi a0, a0, 4
	addi a1, a1, -1
	bgt a2, a3, skip
	bnez a1, loop
	jalr zero, ra, 0
skip:
	mv a3, a2
	beqz a1, skip2
	jal loop
skip2:
	mv a0, a3
	jal fino
fino:
	li a7, 1
	ecall
	li a7, 10
	ecall
	
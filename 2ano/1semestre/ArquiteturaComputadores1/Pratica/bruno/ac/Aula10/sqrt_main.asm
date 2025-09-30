	.data
d1:	.double 25
	.text
	.eqv print_double, 3
	.globl main
main:
	addiu $sp, $sp, -4 
	sw $ra , 0($sp)
	la $t0, d1
	l.d $f12, 0($t0) 
	jal sqrt
	
	mov.d $f12, $f0
	li $v0, print_double
	syscall
	
	lw $ra , 0($sp)
	addiu $sp, $sp, 4
	
	li $v0, 0
	jr $ra
	
	.include "sqrt.asm"
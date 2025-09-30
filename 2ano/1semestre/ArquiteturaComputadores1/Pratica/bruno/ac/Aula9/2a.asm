	.include "f2c.asm"
	.data
	.eqv print_double, 3
	.eqv read_double, 7
	.text
	.globl main
main:
	addiu $sp, $sp, -4 
	sw $ra , 0($sp)
	
	li $v0, read_double
	syscall
	mov.d $f12, $f0
	jal f2c
	
	mov.d $f12, $f0
	li $v0, print_double
	syscall
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra

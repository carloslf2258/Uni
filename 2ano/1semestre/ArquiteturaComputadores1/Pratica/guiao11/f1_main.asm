	.data
	.eqv print_float, 2	
	.text
	.globl main
main:
	addiu	$sp, $sp, -4
	sw		$ra, 0($sp)		#pr�logo
	
	
	jal		f1
	
	li		$v0, print_float
	mov.s 	$f12, $f0
	syscall
	
	
	lw		$ra, 0($sp)		#ep�logo
	addiu $sp, $sp, 4
	
	
	jr		$ra

	.include "f1.asm"
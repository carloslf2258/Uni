#struct 		Alinhamento 	size	offset
# char a1[14]		1 			 14		  0
# int i				4			  4		  14->16
# double g			8			  8		  20->24
# char a2[17]		1			 17  	  32
#					8			 49->56 
	.data
	
	.align 3
xyz: .asciiz "Str_1"
	.space 8
	.word 2023
	.double 2.718281828459045
	.asciiz "Str_2"
	.space 11
	
	.eqv	print_double, 3
	
	.text
	.globl main
main:
	addiu	$sp, $sp, -8
	sw		$ra, 0($sp)		#prólogo
	
	# NOT SURE ABOUT THIS
	la	$a0, xyz
	
	jal	f2
	
	mov.d	$f12, $f0
	li	$v0, print_double
	syscall
	
	
	lw		$ra, 0($sp)		#epílogo
	addiu	$sp, $sp, 8
		
	jr	$ra
	
	.include "f2.asm"

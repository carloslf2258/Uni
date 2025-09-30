	.data
	.eqv	print_int10, 1
str: .asciiz "Arquitetura de Computadores I"
	.text
	.globl main
main:
	addiu	$sp, $sp, -4
	sw		$ra, 0($sp)
	
	la	$a0, str
	jal	strlen			#strlen(str)
	
	move	$a0, $v0
	li	$v0, print_int10
	syscall				#print_int10(strlen(str))
	
	
	lw		$ra, 0($sp)
	addiu	$sp, $sp, 4
	
	jr 	$ra
	
	#==================================
#strlen()
#len: $t0
strlen:
	li	$t0, 0	#len = 0
while:
	lb	$t1, 0($a0)			#while(*s++ != '\0')
	addiu 	$a0, $a0, 1		
	beq		$t1, '\0', endw
	addi	$t0, $t0, 1		#len++
	j	while
endw:
	move	$v0, $t0
	jr 	$ra

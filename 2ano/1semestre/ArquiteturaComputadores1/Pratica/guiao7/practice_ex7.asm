	.data
	
	.eqv	print_int10, 1
	.eqv	print_string, 4
str: .asciiz "Arquitetura de Computadores I"
	
	.text
	.globl main
main:
	addiu	$sp, $sp, -4
	sw		$ra, 0($sp)		#prólogo

	la	$a0, str
	jal	strrev
	move	$a0, $v0
	li	$v0, print_string
	syscall					#print_int10(strrev(str))
	

	lw		$ra, 0($sp)		#epílogo
	addiu	$sp, $sp, 4
	
	jr	$ra
	
#===========================================================
	.data
	.text
# a0 -> *s 
# t1 -> len
strlen:
	li	$t1, 0		#len = 0
while:
	lb	$t0, 0($a0)
	addiu	$a0, $a0, 1
	beq	$t0, '\0', endw
	addi	$t1, $t1, 1 
	j	while
endw:
	move	$v0, $t1
	jr	$ra

#===========================================================
	.data
	.text
strrev:
	addiu	$sp, $sp, -16
	sw		$ra, 0($sp)
	sw		$s0, 4($sp)
	sw		$s1, 8($sp)
	sw		$s2, 12($sp)	#prólogo
	
	move	$s0, $a0
	move	$s1, $a0
	move	$s2, $a0
while_rev:
	lb	$t0, 0($s2)
	beq	$t0, '\0', endw_rev
	addi	$s2, $s2, 1		#p2++
	j	while_rev
endw_rev:
	addi	$s2, $s2, -1		#p2--
	
while2:
	bgeu	$s1, $s2, endw2
	move	$a0, $s1
	move	$a1, $s2
	jal 	exchange
	addi	$s1, $s1, 1
	addi	$s2, $s2, -1

	j	while2
endw2:
	move	$v0, $s0
	lw		$ra, 0($sp)		#epílogo
	lw		$s0, 4($sp)
	lw		$s1, 8($sp)
	lw		$s2, 12($sp)
	addiu	$sp, $sp, 16
	
	jr	$ra
	
	
#===========================================================
exchange:
	lb 	$t0, 0($a0)
	lb	$t1, 0($a1)
	sb	$t0, 0($a1)
	sb	$t1, 0($a0)
	jr	$ra
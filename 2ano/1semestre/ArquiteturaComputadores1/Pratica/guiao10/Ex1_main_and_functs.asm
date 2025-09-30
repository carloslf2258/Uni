	.data
	.eqv read_int, 5
	.eqv read_float, 6
	.eqv print_float, 2
	.text
	.globl main
main:
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)
	
	li	$v0, read_float
	syscall				#read_float()
	mov.s	$f12, $f0	# f12 = x
	
	li	$v0, read_int
	syscall				#read_int()
	move	$a0, $v0	# a0 = x
	
	jal	xtoy
	
	mov.s $f12, $f0
	li	$v0, print_float
	syscall				#print_int10(result)
	
	lw	$ra, 0($sp)
	addiu	$sp, $sp, -4
	
	jr	$ra

#==================================================================
	.data
k0: .float 1.0
	.text
xtoy:
#Mapa de registos:
# x -> $f12 : $f20
# y -> $a0 : $s0
# i : $s1
# result : $f22
	addiu	$sp, $sp, -20	#Prólogo
	sw	$ra, 0($sp)
	sw	$s0, 4($sp)
	sw	$s1, 8($sp)
	s.s $f20, 12($sp)
	s.s $f22, 16($sp)	
#===========================	
	mov.s	$f20, $f12		# f20 = x
	move $s0, $a0			# s0 = y
	
	jal	abs
	move $t1, $v0		# t1 = abs(y)
	
	
	la	$t0, k0
	l.s	$f22, 0($t0)	#result = 1.0
		
	li	$s1, 0			#i = 0;
for:
	bge	$s1, $t1, endfor
if_xtoy:
	ble	$s0, 0, else_xtoy
	mul.s $f22, $f22, $f20
	j	endif_xtoy
else_xtoy:
	div.s $f22, $f22, $f20
endif_xtoy:

	addi $s1, $s1, 1	#i++
	j	for
endfor:
	
	mov.s	$f0, $f22		#return
	
#===========================	
	lw	$ra, 0($sp)			#Epílogo
	lw	$s0, 4($sp)
	lw	$s1, 8($sp)
	l.s $f20, 12($sp)
	l.s $f22, 16($sp)
	addiu	$sp, $sp, 20
	
	jr	$ra	
		
#==================================================================
abs:
#Mapa de registos:
#val -> $a0

	move	$v0, $a0
if:
	bge	$a0, 0, endif	#if(val < 0)
	li	$t0, 0
	sub $v0, $t0, $a0	#val = -val
endif:
	jr	$ra	

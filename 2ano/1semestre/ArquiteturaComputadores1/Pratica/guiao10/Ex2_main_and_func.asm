# RESOLVER LOOP INFINITO -> ver do-while
	.data
	.eqv read_double, 7
	.eqv print_double, 3
	.text
	.globl main
main:
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)
	
	li	$v0, read_double
	syscall
	
	mov.d	$f12, $f0	# aksnjakj
	jal sqrt
	
	li	$v0, print_double
	mov.d	$f12, $f0
	syscall
	
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	
	jr	$ra
	
#=========================================================================
	.data
d0: .double 0.0
d1: .double 1.0
d0_5: .double 5.0
	.text
#Mapa de registos:
# val -> $f12
# aux -> $f2
# xn -> $f4
# i -> $t0
sqrt:
 	la	$t1, d1
 	l.d $f4, 0($t1)	# xn = 1.0
 
	li	$t0, 0		# i = 0
if:
	la	$t1, d0
	l.d	$f6, 0($t1)	#f6 = 0.0	
	c.le.d $f12, $f6 #val > 0.0
	bc1t else
do:
	mov.d	$f2, $f4		# aux = xn
	
	div.d	$f8, $f12, $f4	# f8 = val / xn
	add.d	$f8, $f8, $f4	# f8 = xn + f8
	la	$t1, d0_5
	l.d	$f10, 0($t1)		# f10 = 0.5
	mul.d	$f4, $f10, $f8	# xn = 0.5 * (xn + val/xn);
	
	#while
	addi	$t0, $t0, 1		#i++
	c.eq.d	$f2, $f4	# (aux != xn)
	bc1t	enddo
	
	blt		$t0, 25, do
enddo:
	j	endif
else:
	mov.d $f4, $f6	# xn = 0.0
	
endif:
	mov.d $f0, $f4	# return xn
	jr	$ra

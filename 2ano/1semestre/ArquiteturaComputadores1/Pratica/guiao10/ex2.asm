	.data
	.text
	.globl main
main:
	addiu	$sp, $sp, -4
	sw		$ra, 0($sp)		#prólogo
	li		$v0,6			
	syscall				#read_float
	mov.s	$f12,$f0
	
	jal	sqrt
	
	mov.s	$f12,$f0
	li	$v0,2
	syscall				#print_float
	
	lw		$ra, 0($sp)		#epílogo
	addiu	$sp, $sp, 4		
	jr 		$ra


# Mapa de Registos
# val = $f12
# aux = $f16
# i = $t0
# xn = $f0
	.data
fk0:	.double 0.0
fk1:	.double	1.0
fk2:	.double	0.5
	.text
sqrt:
	li 	$t0, 0
	la	$t1,fk0
	l.d	$f4,0($t1)			#f4 = 0.0
	la	$t1,fk1				
	l.d	$f0,0($t1)			#f0 = 1.0
	la	$t1,fk2
	l.d	$f6,0($t1)			#f6 = 0.5
if:
	c.le.d	$f12,$f4
	bc1t	else
do:
	mov.d	$f16,$f0		#f16 = xn
	div.d	$f18,$f12,$f0	# f18 = val / xn
	add.d	$f18,$f0,$f18 	# f18 = xn + (val / xn)
	mul.d	$f0,$f6,$f18	# xn = 0.5 * f18
	
	addi	$t0,$t0,1		#i++
	c.eq.d	$f16,$f0		
	bc1f	do
	
	blt		$t0,25,do
	j		endif
else:
	mov.d	$f0,$f4
endif:
	jr	$ra

#Mapa de registos
# xn : $f0
# val : $f12 -> $f2
# aux : $f4
# i : $t0
	.data
sqrt_d1:	.double 1.0
sqrt_d2:	.double 0.5
	.text
sqrt:				#double sqrt(double val) {
	mov.d $f2, $f12	#val -> $f2
	la $t1, sqrt_d1
	l.d $f0, 0($t1)		#	double aux = 1.0
	l.d $f4, 0($t1)		#	double xn = 1.0
	li $t0, 0		#	int i = 0;
sqrt_if:
	mtc1 $0, $f10
	cvt.s.w $f10, $f10 # meter $f10 a 0.0
	c.le.d $f2, $f10
	bc1t sqrt_else		#	if(val > 0.0) {
sqrt_do:			#		do {
	mov.d $f4, $f0		#			aux = xn
	div.d $f6, $f2, $f0	#			temp = val/xn
	add.d $f0, $f0, $f6	#			xn = xn + temp
	
	la $t1, sqrt_d2
	l.d $f6, 0($t1)		#			temp = 0.5
	mul.d $f0, $f0, $f6	#			xn = xn * temp
sqrt_while:
	c.eq.d $f4, $f0
	bc1f sqrt_do		#		} while((aux != xn) 
	addi $t0, $t0, 1 	#
	blt $t0, 25, sqrt_do	#		&& (++i < 25));
	j sqrt_endif
sqrt_else:			#	} else
	mtc1 $0, $f0
	cvt.s.w $f0, $f0 	# 		xn = 0.0
sqrt_endif:
	jr $ra

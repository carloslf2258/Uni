#struct 		Alinhamento 	size	offset
# char a1[14]		1 			 14		  0
# int i				4			  4		  14->16
# double g			8			  8		  20->24
# char a2[17]		1			 17  	  32
#
	.data
d0_35: .double 0.35
	.text
f2:
	#Onde vem o p sendo que é do tipo xyz ?
	# Como é um endereço, deve vir no a0
	
	move	$t0, $a0
	
	l.d	$f2, 24($t0)	# f2 = p->g
	
	lw	$t1, 16($t0)
	mtc1 $t1, $f6
	cvt.d.w $f6, $f6	#f6 = (double) p->i
	
	la	$t1, d0_35
	l.d	$f4, 0($t1)		# f4 = 0.35
	
	div.d	$f0, $f6, $f4	#f0 = (double)p->i / 0.35
	mul.d	$f0, $f0, $f2	#  p->g * f0
	
	jr	$ra
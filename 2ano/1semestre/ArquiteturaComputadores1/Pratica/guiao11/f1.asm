#char a1[10]		1			10				0
#double g			8			8			10->16
#int a2[2]			4			8			24			
#char v				1			1			32
#float k			4			4			33->36
#					8			40
 .data
 
 	.eqv a1, 0
 	.eqv g, 16
 	.eqv a2, 24
 	.eqv v, 32
 	.eqv k, 36
 
 	.align 2
s1:	.asciiz	"St1"
	.space 	6
	.double	3.141592653589
	.word	291, 756
	.byte	'X'
	.float	1.983
 .text
f1:
	la	$t0, s1
	
	#s1.a2[0]
	lw	$t1, a2($t0)

	#s1.a2[1]
	lw	$t1, 4($t1)
	
	mtc1	$t1, $f2
	cvt.d.w	$f2, $f2	# f2 = (double) s1.a2[1]
	
	#s1.k
	lw	$t1, k($t0)	
	
	mtc1 $t1, $f4
	cvt.d.w $f4, $f4 	# f4 = (double) s1.k

	#s1.g
	lw	$t1, g($t0)
	mtc1 	$t1, $f6
	cvt.d.w	$f6, $f6	# f6 = (double) s1.g

	div.d	$f0, $f2, $f4	# (double)s1.a2[1] / (double)s1.k)
	mul.d	$f0, $f6, $f0	# (s1.g * (double)s1.a2[1] / (double)s1.k)
	
	cvt.s.d	$f0, $f0		# (float)

	
	jr	$ra

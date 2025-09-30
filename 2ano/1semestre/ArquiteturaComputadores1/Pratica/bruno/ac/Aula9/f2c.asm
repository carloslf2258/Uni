	.data
cnt:	.double 5.0, 9.0, 32.0
	.text
f2c:				#double f2c(double ft)
	la $t0, cnt

	l.s $f2, 0($t0)	#f2 = 5.0
	l.s $f4, 8($t0)	#f4 = 9.0
	l.s $f6, 16($t0)	#f6 = 32.0
	
	div.d $f2, $f2, $f4 #f2 = 5.0 / 9.0
	sub.d $f12, $f12, $f6 #f8 = ft - 32.0
	mul.d $f0, $f2, $f12 	# return (5.0 / 9.0 * (ft – 32.0));

	jr $ra
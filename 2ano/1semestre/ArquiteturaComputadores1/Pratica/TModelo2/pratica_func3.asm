# Mapa de registos
# a: $f8
# t: $f6
# n: $t1
# oldg: $f0
# g: $f2
# s: $f4
# k: $t0
    	.data
oldg:   .float -1.0
g:  	.float 1.0
s:  	.float 0.0
    	.text
func3:                          #float func3 (float *a, float t, int n) {
	la	$t0, oldg
	l.s	$f0, 0($t0)				#f0 = -1.0
	la	$t0, g
	l.s	$f2, 0($t0)				#f2 = 1.0
	la	$t0, s
	l.s	$f4, 0($t0)				#f4 = 0.0
	
	li  $t0, 0					#k = 0
	
	move	$f8, $f12			#f8 = *a
	move	$f6, $f14			#f6 = t
	move	$t1, $a0			#t1 = n
	
for:
	bge		$t0, $t1, endfor
while:
	sub.s	$f10, $f2, $f0			#f10 = g - olg
	c.le.s	$f10, $f6
	bc1t	endw
	mov.s	$f0, $f2
	
	mul		$t2, $t0, 4
	#l.s		$f10, 0($t2)		#f10 = i*4  mas ainda está em int
	#cvt.s.w	$f10, $f10			#f10 = (float) i*4
	#add.s	$f10, $f8, $f10		#f10 = a[k]
	mfc1	$t3, $f8			#t3 = &a[0]
	addu	$t3, $t3, $t2		#t3 = &a[k]
	l.s		$f10, 0($t3)		#f10 = a[k]
	
	add.s	$f2, $f2, $f10		#g = g + a[k]

	div.s	$f2, $f2, $f6		#g = g + a[k] / t
	j 		while
endw:
	add.s	$f4, $f4, $f2		#s = s+g
	mov.s	$f10, $f2			#a[k] = g
	addiu	$t0, $t0, 1			#k++
	j		for
endfor:
	mtc1	$t1, $f10			
	cvt.s.w	$f10, $f10			#f10 = (float) n
	div.s	$f0, $f4, $f10		#f0 = d / (float) n
	jr		$ra
	





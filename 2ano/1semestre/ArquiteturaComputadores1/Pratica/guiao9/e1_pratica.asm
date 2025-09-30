	.data
float0: 	.float 2.59375
float1: 	.float 0.0
	.eqv 	print_float, 2
	.eqv	read_int, 5
	.text
	.globl main
main:
	la		$t0, float0		
	l.s	$f4, 0($t0)			#f4 = 2.59375
	la		$t1, float1
	l.s	$f2, 0($t1)			#f2 = 0.0
do:
	li		$v0, read_int
	syscall						#read_int
	move	$t2, $v0			#val = read_int
	
	mtc1	$t2, $f6
	cvt.s.w	$f6, $f6			#f6 = (float) f6
	
	mul.s	$f0, $f6, $f4		#res = (float)val * 2.59375;
	
	li		$v0, print_float
	mov.s	$f12, $f0
	syscall						#print_float( res ); 
while:
	c.eq.s	$f0, $f2
	bc1f	do
	
	li		$v0, $0 
	jr 		$ra
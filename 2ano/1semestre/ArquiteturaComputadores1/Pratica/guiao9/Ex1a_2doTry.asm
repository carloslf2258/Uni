	.data
const0: .float 2.59375
const1: .float 0.0
	.eqv print_int10, 1
	.eqv read_int, 5
	.eqv print_float, 2
	.text
	.globl main
# (float) val: f0 
# 
main:
	la	$t0, const1
	l.s $f6, 0($t0)		# f6 = 0.0
do:
	li	$v0, read_int
	syscall					#read_int()
	
	mtc1 $v0, $f0			# f0 = (int) val
	cvt.s.w	$f0, $f0		#val = (float) val
	
	#la	$t0, const0				
	#lw	$t1, 0($t0)		| -> l.s $f0, const0
	#mtc1 $t1, $f0		|

	la	$t0, const0
	l.s $f2, 0($t0)		# f2 = const0
	
	mul.s $f4, $f0, $f2		#res = (float)val * 2.59375;
	
	li	$v0, print_float
	mov.s	$f12, $f4
	syscall					#print_float( res );
	
	c.eq.s $f4, $f6
	bc1f   do
end:
	jr 	$ra

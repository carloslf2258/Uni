#Mapa de registos
# val : $t0
# res : $f2
	.data
sk1:	.float 2.59375
sk2:	.float 0.0
	.text
	.eqv read_int, 5
	.eqv print_float, 2
	.globl main
main:				#int main(void)
	la 		$t1, sk1
	l.s 	$f8, 0($t1)		# $f8 = 2.59375
	la 		$t2, sk2
	l.s 	$f10, 0($t2)	# $f10 = 0.0
do:				#do {
	li 		$v0, read_int	#
	syscall
	move 	$t0, $v0		#	val = read_int();
	
	mtc1 	$t0, $f0
	cvt.s.w $f4, $f0
	
	mul.s 	$f2, $f4, $f8  	#	res = (float)val * 2.59375;
	
	mov.s 	$f12, $f2
	li 		$v0, print_float
	syscall			#	print_float( res );
	
	#mtc1 $0, $f10
	#cvt.s.w $f10, $f10 # meter $f10 a 0.0
while:	
	c.eq.s 	$f2, $f10	#} while(res != 0.0); 
	bc1f 	do			# (branch if $f2 = $f10 is false)
	
	li 		$v0, 0		#return 0; 
	jr 		$ra
	

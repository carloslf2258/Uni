	.data
	
	.eqv print_double, 3
	.eqv read_double, 7
ct: .double 0.0
	
	.text
	.globl main
main:
	addiu	$sp, $sp, -4
	sw		$ra, 0($sp)		#prólogo
	
	la	$t0, ct
	l.d $f2, 0($t0)		#ct = 0.0
while:
	#bgt	$f2, 100, endw
	li		$t0, 100	#t0 = 100
	mtc1	$t0, $f4
	cvt.d.w $f4, $f4	# f4 = (double) 100
	c.le.d	$f2, $f4	# ct <= 100.0
	bc1f	endw 
	
	li	$v0, read_double
	syscall				#read_double()
	
	mov.d	$f6, $f0	# f6 = ft
	mov.d	$f12, $f6	
	jal	f2c				# f2c(ft);	
	
	mov.d	$f2, $f0	#ct = f2c(ft);
	
	li	$v0, print_double
	mov.d $f12, $f2
	syscall				#print_double(f2c(ct))
	
	
	j	while
endw:
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	
	jr	$ra
	
	.include "f2c.asm"

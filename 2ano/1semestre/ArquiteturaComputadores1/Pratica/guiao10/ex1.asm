
abs:						#int abs(int val){
	move		$v0, $a0
abs_if:
	bgez		$v0, abs_endif	#if (val < 0)
	sub			$v0, $0, $v0	#	val = -val
abs_endif:						#return val
	jr			$ra				#}
	
####################################################################
#mabs-> $v0 
#cop_x -> f20 
#cop_y -> $s0 
#i -> $s1 
#result -> $f22
	.data
f_one:	.float	1.0
	.text
xtoy:								#float xtoy(float x, int y){
	addiu	$sp, $sp, -20				#prologo
	sw		$ra, 0($sp)
	sw		$s0, 4($sp)
	sw		$s1, 8($sp)
	s.s		$f20, 12($sp)
	s.s		$f22, 16($sp)
	
	mov.s	$f20, $f12					#cop_x = x;
	move	$s0, $a0					#cop_y = y;
	li		$s1, 0						#i = 0;
	la		$t0, f_one
	l.s		$f22, 0($t0)				#result = 1.0;
	
xtoy_wh:								#while(){
	move	$a0, $s0					
	jal		abs							#	mabs = abs(y);
	bge		$s1, $v0, xtoy_endw			#	if (i>= mabs) break;
xtoy_if:
	blez	$s0, xtoy_else				#	if (y > 0)
	mul.s	$f22, $f22, $f20			#		result *= x;
	j		xtoy_endif					#	i++
xtoy_else:								#	else
	div.s	$f22, $f22, $f20			#		result /= x;
xtoy_endif:
	addi	$s1, $s1, 1					#	i++;
	j 		xtoy_wh
xtoy_endw:
	lw		$ra, 0($sp)					#epilogo
	lw		$s0, 4($sp)
	lw		$s1, 8($sp)
	l.s		$f20, 12($sp)
	l.s		$f22, 16($sp)
	jr		$ra

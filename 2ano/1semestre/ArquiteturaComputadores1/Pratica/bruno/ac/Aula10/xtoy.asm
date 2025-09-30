#Mapa de registos
# x 	 : $f12 -> $f20
# y 	 : $a0 -> $s0
# i 	 : $s1
# result : $f22
xtoy_f1:	.float 1.0	
	.include "abs.asm"
xtoy:				#float xtoy(float x, int y)
	addiu $sp, $sp, -20	#	prologo
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	s.s $f20, 12($sp)
	s.s $f22, 16($sp)
	
	mov.s $f20, $f12	#			//x -> $f20
	move $s0, $a0		#			//y -> $s0
	li $s1, 0		#	i = 0;
	la $t0, xtoy_f1
	l.s $f22, 0($t0)	#	result = 1.0
xtoy_for:			#	for(i=0, result=1.0; i < abs(y); i++)
	move $a0, $s0
	jal abs
	bge $s1, $v0, xtoy_endf
xtoy_if:			#	{
	blez $s0, xtoy_else	#		if(y > 0) 
	mul.s $f22, $f22, $f20	#			result *= x; 
	j xtoy_endif
xtoy_else:			#		else
	div.s $f22, $f22, $f20	#			result /= x; 
xtoy_endif:
	addi $s1, $s1, 1	#		i++
	j xtoy_for		#	}
xtoy_endf:
	mov.s $f0, $f22		#	return result
	lw $ra, 0($sp)		#	epilogo
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	l.s $f20, 12($sp)
	l.s $f22, 16($sp)
	addiu $sp, $sp, 20
	jr $ra
# Mapa de registos: 
# str: $a0 -> $s0 (argumento � passado em $a0) 
# p1: $s1 (registo callee-saved) 
# p2: $s2 (registo callee-saved) 
# 
strrev: 
	addiu 	$sp,$sp,-16 		# reserva espa�o na stack 
	sw 		$ra,0($sp) 				# guarda endere�o de retorno 
	sw 		$s0,4($sp) 				# guarda valor dos registos 
	sw 		$s1,8($sp) 				# $s0, $s1 e $s2 
	sw 		$s2,12($sp)  
	
	move 	$s0,$a0 				# registo "callee-saved" 
	move 	$s1,$a0 				# p1 = str 
	move 	$s2,$a0 				# p2 = str 
strrev_while1: 
	lb		$t0, 0($s2)		
	beq		$t0, '\0', end_strrev_while1 # while( *p2 != '\0' ) { 
	addi	$s2, $s2, 1 			# p2++;
	j 		strrev_while1 			# } 
end_strrev_while1:
	addi	$s2, $s2, -1			# p2--; 
strrev_while2: 					# while(p1 < p2) { 
	bgeu	$s1, $s2, end_strrev_while2
	move 	$a0, $s1  
	move 	$a1, $s2  
	jal 	exchange 				# exchange(p1,p2)
	addi	$s1, $s1, 1			# p1++;
 	addi	$s2, $s2, -1		# p2--; 
 	j 		strrev_while2 # } 
end_strrev_while2: 
 	move 	$v0,$s0 				# return str 
 	lw 		$ra, 0($sp)				# rep�e endere�o de retorno 
 	lw 		$s0, 4($sp)				# rep�e o valor dos registos 
 	lw 		$s1, 8($sp)				# $s0, $s1 e $s2 
 	lw 		$s2, 12($sp)  
 	addiu 	$sp, $sp, 16 				# liberta espa�o da stack 
 	jr 		$ra 						# termina a sub-rotina
 	
# ____________________________________________________________________
	.data
	.text
exchange:						#void exchange(char *c1, char *c2){
 	lb		$t0, 0($a0)			#	aux = *c1;
 	lb		$t1, 0($a1)			#	aux1 = *c2;
 	sb		$t0, 0($a1)			#	*c2 = aux;
 	sb		$t1, 0($a0)			#	*c1 = aux1;
 	jr		$ra					#}
 	

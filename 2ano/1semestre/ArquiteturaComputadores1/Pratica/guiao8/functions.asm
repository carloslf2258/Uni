# Mapa de registos 
# res: $v0 
# s: $a0 
# *s: $t0 
# digit: $t1 
# Sub-rotina terminal: não devem ser usados registos $sx
	.data
	.text
atoi: 
	li 		$v0,0 						# res = 0; 
atoi_while: 
	lb 		$t0, 0($a0) 				# while(
 	blt		$t0, '0', atoi_endw 		# 		*s >= '0') && 
 	bgt		$t0, '9', atoi_endw			# 				*s <= '9') { 
 	li 		$t2, '0'					
 	sub 	$t1, $t0, $t2 				# digit = *s – '0' 
 	addiu 	$a0, $a0, 1 				# s++; 
 	mul 	$v0,$v0,10 					# res = 10 * res; 
 	add 	$v0, $v0, $t1 				# res = 10 * res + digit; 
 	
	j		atoi_while  				# }
atoi_endw: 
 	jr $ra
 	
# RESPOSTA À 1_c:	
	.data
	.text
atoi_b: 
	li 		$v0,0 						# res = 0; 
atoi_b_while: 
	lb 		$t0, 0($a0) 				# while(
 	blt		$t0, '0', atoi_b_endw 		# 		*s >= '0') && 
 	bgt		$t0, '1', atoi_b_endw			# 				*s <= '1') { 
 	li 		$t2, '0'					
 	sub 	$t1, $t0, $t2 				# digit = *s – '0' 
 	addiu 	$a0, $a0, 1 				# s++; 
 	mul 	$v0,$v0, 2 					# res = 2 * res; 
 	add 	$v0, $v0, $t1 				# res = 2 * res + digit; 
 	
	j		atoi_b_while  				# }
atoi_b_endw: 
 	jr $ra
 	
#_____________________________________________________________________________________
	.data
	.text
toascii:
	addi	$a0,$a0,'0'
toascii_if:
	ble	$a0,'9',toascii_endif
	addi	$a0,$a0,7
toascii_endif:
	move	$v0,$a0
	jr	$ra

#___________________________________________________________________________________
 # Mapa de registos: 
# str: $a0 -> $s0 (argumento é passado em $a0) 
# p1: $s1 (registo callee-saved) 
# p2: $s2 (registo callee-saved) 
# 
strrev: 
	addiu 	$sp,$sp,-16 		# reserva espaço na stack 
	sw 		$ra,0($sp) 				# guarda endereço de retorno 
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
 	lw 		$ra, 0($sp)				# repõe endereço de retorno 
 	lw 		$s0, 4($sp)				# repõe o valor dos registos 
 	lw 		$s1, 8($sp)				# $s0, $s1 e $s2 
 	lw 		$s2, 12($sp)  
 	addiu 	$sp, $sp, 16 				# liberta espaço da stack 
 	jr 		$ra 						# termina a sub-rotina

#==================================================================================
#void exchange(char *c1, char *c2)
#c1: $a0
#c2: $a1
exchange:
	lb	$t0, 0($a0)
	lb	$t1, 0($a1)
	
	sb	$t0, 0($a1)
	sb	$t1, 0($a0)
	
	jr	$ra
 	
#=============================================================================== 
	.text
strlen:
	li $v0,0 				# len = 0; 
strlen_while: 
	lb 		$t0, 0($a0)		 
 	beq		$t0, '\0', strlen_endw # while(*s++ != '\0')			
 	addi	$v0, $v0, 1		#	len++;
 	addiu	$a0, $a0, 1 	#	s++;
 	j strlen_while 				# } 
strlen_endw: #move $v0,$v0 	# return len; 
	jr $ra 
#==================================================================================
# Mapa de registos 
# n: $a0 -> $s0
# b: $a1 -> $s1 
# s: $a2 -> $s2 
# p: $s3 
# digit: $t0 
# Sub-rotina intermédia 

#NOTA: É preciso preservar os valores de n, b, *s e *p

itoa: 
	addiu 	$sp, $sp, -20			# reserva espaço na stack
	sw 		$ra,0($sp) 
	sw 		$s0,4($sp) 
	sw 		$s1,8($sp) 
	sw 		$s2,12($sp) 
	sw		$s3, 16($sp) 			# guarda registos $sx e $ra 
 									# copia n, b e s para registos
 	move 	$s0, $a0 				#	n
	move 	$s1, $a1 				#	b
	move 	$s2, $a2 				#	s
 	move	$s3, $a2 				#  	char *p = s
itoa_do: 							# do {  	
 	rem		$t0, $s0, $s1			# digit = n % b;
	div		$s0, $s0, $s1			# n  = n / b;
	move	$a0, $t0
	jal		toascii
	sb		$v0, 0($s3)				# *p = toascii(digit)
	addiu	$s3, $s3, 1				# p++;
	 	 	
 	bgt		$s0, $0, itoa_do		#while(n>0);
itoa_enddo:
 	sb		'\0', 0($s3)			#*p = '\0';
 	move	$a0, $s2
 	jal		strrev					#strrev(s);
 	move	$v0, $s2				#return s;
 	
 	lw		$ra, 0($sp)
 	lw		$s0, 4($sp)
 	lw		$s1, 8($sp)
 	lw		$s2, 12($sp)
 	lw		$s3, 16($sp)			#epílogo
 	addiu	$sp, $sp, 20			
 	jr		$ra						#}
 #====================================================================


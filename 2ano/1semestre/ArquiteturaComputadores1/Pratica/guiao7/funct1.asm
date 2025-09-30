# O argumento da função é passado em $a0 
# O resultado é devolvido em $v0 
# Sub-rotina terminal: não devem ser usados registos $sx 
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

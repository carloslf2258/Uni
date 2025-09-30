# Mapa de registos 
# p: $t0 
# pultimo:$t1 
# *p $t2 
# soma: $t3 
 .data 
array: .word 7692,23, 5, 234
 .eqv print_int10, 1 
 .eqv SIZE,4 
 .text 
 .globl main
main:
	li $t3, 0			# soma = 0
	li	$t4, SIZE		
	addi	$t4, $t4, -1		#t4 = SIZE-1
	sll	$t4, $t4, 2		# ou "mul $t4,$t4,4"
	la	$t0, array		#t0 = array
	addu $t1, $t0, $t4	# pultimo = array + SIZE - 1;
while: 
	bgtu	$t0, $t1, endw	#while( p <= pultimo )
	lw	$t2, 0($t0)
	add	$t3, $t3, $t2		#soma = soma + (*p);
	
 	addiu $t0, $t0, 4 # p++; 
 	j 	while # }
 	
endw: 
	li 	$v0, print_int10
	or 	$a0, $t3, $0
	syscall		# print_int10(soma); 
	
	li	$v0, 0	#return 0;
 	jr 	$ra # termina o programa
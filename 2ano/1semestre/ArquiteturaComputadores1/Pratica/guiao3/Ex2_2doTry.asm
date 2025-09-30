# Mapa de registos: 
# value: $t0 
# bit: $t1 
# i: $t2 
#var temp: $t3
#resto da divisão: $t4
#flag: t5
#IMCOMPLETO, FALTA ALINEA C, TEM ALGUMAS IMPLEMENTACOES DA D
 .data 
str1: .asciiz "Introduza um numero: " 
str2: .asciiz "\nO valor em binário e': "
 .eqv print_string,4 
 .eqv read_int,5 
 .eqv print_char,11

 .text 
 .globl main 
main: 
	li	$v0, print_string 		
 	la $a0, str1 		 
 	syscall 		# print_string("Introduza um numero:"); 
 	
 	li	$v0, read_int 		
 	la $a0, str1 		 
 	syscall			#read_int();
 	
 	move	$t0, $v0	#value = read_int()
 	
 	li	$v0, print_string 		
 	la 	$a0, str2 		 
 	syscall 		# print_string("\nO valor em binário e': "); 
 	
 	li 	$t2, 0 			# i = 0 
 	li	$t5, 0			#flag = t5
for: 
	bge $t2, 32, endfor 	# while(i < 32) { 

	rem	$t4, $t2, 4		#t4 = i % 4	
	
	beq	$t5, 1, then		#if (flag == 1)
	bne	$t1, 0, then		#if (bit != 0)
	j	endif
	
then:
	li	$t5, 1			#flag = 1

if2:
	bne	$t4, 0, endif2	#	if((i % 4) == 0)
	
	li	$v0, print_char
	li	$a0, ' '
	syscall				#print_char(' ')

endif2:
			
 	li $t3,0x80000000 	# 
 	and $t1, $t0, $t3 	# bit=value & 0x80000000 
 	
if: 
	beq $t1, 0, else 	# if(bit != 0) 

	li	$v0, print_char
 	li	$a0, '1'
 	syscall			#print_char('1');
 	
 	j	endif 
else: 					# else 
 	li	$v0, print_char
 	li	$a0, '0'
 	syscall 				# print_char('0'); 
endif: 
	sll		$t0, $t0, 1			# value = value << 1; 
 	addi	$t2, $t2, 1		# i++; 
 	j for 			# } 
endfor: 			# 
 	jr $ra 		# fim do programa
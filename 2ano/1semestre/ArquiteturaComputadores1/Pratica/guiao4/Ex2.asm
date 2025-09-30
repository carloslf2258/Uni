# Mapa de registos 
# num: $t0 
# p: $t1 
# *p: $t2 
 .data 
 .eqv SIZE,20 
 .eqv read_string, 8
 .eqv print_int10, 1 
str: .space 21
 .text 
 .globl main 
main:
	li $t0, 0			#num = 0;
	
	li $v0, read_string
	la $a0, str
	li $a1, SIZE
	syscall			# read_string(str,SIZE); 
	
 	la $t1,str 		#p = str; 
while: 
# while(*p != '\0') 
 	lb $t2, 0($t1) # Tou a ler o valor de str e guardar en t2
 	
 	beq $t2, $0, endw # Comparar com 0 (='\0') {
if:
 	blt $t2,'0',endif # if(str[i] >='0' && 
 	bgt $t2,'9',endif # str[i] <= '9') 
 	addi $t0, $t0, 1 # num++; 
 	
endif: 
 	addiu $t1, $t1, 1 # p++; 
 	j 	while # }
 	
endw: 
	li 	$v0, print_int10
	or 	$a0, $t0, $0
	syscall		# print_int10(num); 
	
	li	$v0, 0	#return 0;
 	jr 	$ra # termina o programa
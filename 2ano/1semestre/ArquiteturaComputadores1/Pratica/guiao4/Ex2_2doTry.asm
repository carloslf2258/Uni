# Mapa de registos 
# num: $t0 
# p: $t1 
# *p: $t2 (Registo temporário para guardar o valor 
# armazenado na posição de memória p) 
	.data
	.eqv SIZE, 20
	.eqv read_string, 8
	.eqv print_int10, 1
str: 	.space 21
	.text
	.globl main
main:
	li	$v0, read_string
	la	$a0, str
	li	$a1, SIZE
	syscall				#read_string(str, SIZE)
	
	li	$t0, 0			#num = 0
	la	$t1, str		#t1 = str
	
while:					# while(str[i] != '\0')
	lb	$t2, 0($t1)
	beq	$t2, 0, endwhile	
	
if:					#if( (*p >= '0') && (*p <= '9') )
	blt	$t2, '0', endif
	bgt	$t2, '9', endif
	
	addi	$t0, $t0, 1		#num++
	
endif:

	addi	$t1, $t1, 1		#p++
	j	while
endwhile:
	li 	$v0, print_int10
	or 	$a0, $t0, $0
	syscall			# print_int10(num); 
	
	li	$v0, 0		#return 0;
	jr 	$ra
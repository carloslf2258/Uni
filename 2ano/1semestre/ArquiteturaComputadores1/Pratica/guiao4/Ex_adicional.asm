	.data
  .eqv SIZE,20 
 .eqv read_string, 8
 .eqv print_string, 4 
str: .asciiz "Introduza uma string: "
str2: .space 21
	.text
	.globl main
main:
	li	$v0, print_string
	la	$a0, str
	syscall			#print_string("Introduza uma string: ");
	
	li	$v0, read_string
	la	$a0, str2
	li	$a1, SIZE
	syscall			#read_string(str, SIZE);
	
	la	$t0, str2	#p = str
while:
	lb	$t1, 0($t0)	#t1 = **
	beq	$t1, '\0', endw	#while (*p != '\0')
	
	# Verifica se o caractere está entre 'a' e 'z'
#	li	$t2, 'a'			# Carrega 'a' em t2
#	li	$t3, 'z'			# Carrega 'z' em t3
#	blt	$t1, $t2, next		# Se t1 < 'a', vá para o próximo caractere
#	bgt	$t1, $t3, next		# Se t1 > 'z', vá para o próximo caractere
	
	# Converte o caractere minúsculo em maiúsculo
	li	$t4, 0x20			# Carrega 0x20 (32 em decimal) em t4
	sub	$t1, $t1, $t4		# *p = *p - 32 (conversão de minúscula para maiúscula)
	sb	$t1, 0($t0)		# Armazena o novo valor na string

#next:
	addi	$t0, $t0, 1	#p++
	j	while
endw:
	li	$v0, print_string
	la	$a0, str2
	syscall				#print_string(str2)
	jr	$ra
	
	
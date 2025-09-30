#Imprime uma lista
#Mapa de variáveis:
#i: t0
#lista: t1
#lista + i: t2
	.data
str: .asciiz "\nIntroduza um numero: "
	.align 2
lista: .space 20
	.eqv SIZE, 5
	.eqv print_string, 4
	.eqv read_int, 5
	.text
	.globl main
main:
	li	$t0, 0		#i = 0
for:
	bge	$t0, SIZE, endfor	#for(i=0; i < SIZE; i++)
	
	li	$v0, print_string	#print_string
	la	$a0, str
	syscall
	
	la	$t1, lista			#t1 = lista
	sll	$t2, $t0, 2 		#t2 = i * 4
	addu	$t2, $t1, $t2	#t2 = lista + i*4	
	
	li	$v0, read_int		#lista[i] = read_int
	syscall
	
	sw	$v0, 0($t2)	#lista[i] = read_int()	

	addi $t0, $t0, 1
	j 	for
endfor:
	jr $ra

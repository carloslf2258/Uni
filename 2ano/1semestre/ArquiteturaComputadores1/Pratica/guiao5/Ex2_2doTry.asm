#Mapa variáveis:
#	p: t0
#	*p: t1
# 	lista+SIZE: t2
	.data
str1: .asciiz "\nConteudo do array:\n"
str2: .asciiz "; "
lista:	.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15
	.eqv	print_string, 4
	.eqv	print_int10, 1
	.eqv	SIZE, 10
	.text
	.globl main
main:
	la	$t0, lista		#p = lista
	
	li	$v0, print_string
	la	$a0, str1
	syscall				#print_string(str1)

	li	$t2, SIZE
	sll	$t2, $t2, 2		#t2 = SIZE * 4
	addu $t2, $t2, $t0	#t2 = t2 + p
		
for:	#for(p = lista; p < lista + SIZE; p++)
	bge	$t0, $t2, endfor
	
	lw	$t1, 0($t0)			#t1 = *p
	
	li	$v0, print_int10
	move $a0, $t1
	syscall					#print_int10( *p );
	
	li	$v0, print_string
	la	$a0, str2
	syscall					#print_string(str2)
	
	addi $t0, $t0, 4		#p++ => p = p + (sizeof(valor))
	j for
endfor:
	jr	$ra
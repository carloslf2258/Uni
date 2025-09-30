#Ordena por ordem crescente os elementos de um 
#array de números inteiros (algoritmo bubble-sort não otimizado)
	
# Mapa de registos 
# ... 
# houve_troca: $t4 
# i: $t5 
# lista: $t6 
# lista + i: $t7 	
	.data
	.eqv SIZE, 10
	.eqv TRUE, 1
	.eqv FALSE, 0
	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_int10, 1
str:	.asciiz "\n Introduza um numero: "
str1: .asciiz "\nConteudo do array:\n"
str2: .asciiz "; "
	.align 2
lista:	.space 40
	.text
	.globl main
main: 								#void main(void){
	li 		$t0, 0					#i=0;
while:
	bge		$t0, SIZE, endw				#	while(i < SIZE){
	
	la		$a0, str
	li		$v0, print_string
	syscall							#		print:str(str);
	
	li		$v0, read_int
	syscall							#		int tmp = read_int(); tmp<=> $v0
	
	la		$t1, lista
	sll		$t2, $t0, 2				#		int temp1 = i*4;
	addu	$t2, $t1, $t2				#		($t2) = &(lista[i]);
	
	sw		$v0, 0($t2)				#lista[i] = tmp;
	
	addi		$t0, $t0, 1				#		i++
	
	j		while						#	}
	
endw:
	#jr $ra
	
#==============================================================================
do:
	li	$t4, FALSE
	li	$t5, 0			#i = 0
	la	$t6, lista		#t6 = &lista
	
	li	$t3, SIZE
	addi $t3, $t3, -1	#t3 = SIZE - 1
for:	bge $t5, $t3, endfor		#i < SIZE - 1
	
	sll	$t7, $t5, 2
	addu $t7, $t7, $t6	#t7 = lista + i*4
	
	lw	$t8, 0($t7)		#lista[i]
	lw	$t9, 4($t7)		#lista[i+1] -> lista i+4* + 4 (elemento à frente)
	
if:	
	ble	$t8, $t9, endif		#if (lista[i] > lista[i+1])
	
	#move	$at, $t8		#aux = lista[i]
	#move	$t8, $t9		#lista[i] = lista[i+1]
	#move	$t9, $at		#lista[i+1] = aux
	
	#Ou: Guardando a memória ao contrário
	sw	$t9, 0($t7)			#lista[i] = lista[i+1]
	sw	$t8, 4($t7)			#lista[i+1] = lista[i]
	
	
	li	$t4, TRUE
	
endif:
	addi	$t5, $t5, 1
	j 	for
endfor:
	
while2: beq $t4, TRUE , do		#while (houveTroca==TRUE);

#==============================================================================
#IMPRESSÃO DO ARRAY:

	li	$v0, print_string
	la	$a0, str1
	syscall				#print_string("Conteudo do array")

	li	$t2, SIZE
	sll	$t2, $t2, 2		#t2 = SIZE * 4
	addu $t2, $t2, $t6	#t2 = t2 + p
		
for2:	#for(p = lista; p < lista + SIZE; p++)
	bge	$t6, $t2, endfor2
	
	lw	$t1, 0($t6)			#t1 = *p
	
	li	$v0, print_int10
	move $a0, $t1
	syscall					#print_int10( *p );
	
	li	$v0, print_string
	la	$a0, str2
	syscall					#print_string(str2)
	
	addi $t6, $t6, 4		#p++ => p = p + (sizeof(valor))
	j for2
endfor2:
	jr	$ra
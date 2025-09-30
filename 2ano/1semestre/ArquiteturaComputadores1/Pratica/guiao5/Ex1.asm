#Programa que pede 5 valores inteiros e
#introduz numa lista
	.data
str:	.asciiz "\n Introduza um numero: "
	.align 2
lista: .space 20
	.eqv SIZE, 5
	.eqv print_str, 4
	.eqv read_int, 5
# i: $t0 
# lista: $t1 
# lista + i: $t2
	.text
	.globl main
main: 								#void main(void){
	li 		$t0, 0					#i=0;
while:
	bge		$t0, SIZE, endw				#	while(i < SIZE){
	
	la		$a0, str
	li		$v0, print_str
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
	jr $ra

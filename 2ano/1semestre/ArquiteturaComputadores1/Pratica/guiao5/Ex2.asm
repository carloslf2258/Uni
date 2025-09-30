#Programa inicializa um array com valores inteiros e da print do array
	.data
str1: .asciiz "\nConteudo do array:\n"
str2: .asciiz "; "
lista: .word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15
	.eqv SIZE, 10
	.eqv print_str, 4
	.eqv print_int10, 1
# p: $t0 
# *p: $a0 (Registo temporário para guardar o valor 
#armazenado em memória)
#tmp : $t1 
# lista+Size: $t2
	.text
	.globl main
main: 	
	la		$a0, str1
	li		$v0, print_str
	syscall							#print:str(str1);
	
	la		$t0, lista				#p = lista
	li		$t1, SIZE					#
	sll		$t1, $t1, 2
	addu	$t2, $t1, $t0				#$t1 = lista + SIZE;
while:
	bgeu	$t0, $t2, endw				# while(p < lista+SIZE) {
	lw		$a0, 0($t0)				#	tmp = *p;
	
	li		$v0, print_int10
	syscall							#	print_int(tmp);
	
	li		$v0, print_str
	la		$a0, str2
	syscall							#	print_str(str2);
	
	addiu	$t0, $t0, 4				#p++
	
	j 		while						#}
endw:
	jr 		$ra

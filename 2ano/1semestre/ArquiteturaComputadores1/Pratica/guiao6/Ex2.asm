	.data
	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	SIZE,3
	
str1: .asciiz "Array"
str2: .asciiz "de"
str3: .asciiz "ponteiros"

array: .word str1, str2, str3
# Mapa de Registos
	# $t0 = i
	# $t1 = p = &array
	# $t2 = pultimo = &array + SIZE
	.globl main
	.text
main:						#void main(){
#	la		$t0, array		# i is not used
	la		$t1, array		# p
	li		$t2, SIZE
	mul 	$t2, $t2, 4
	addu	$t2, $t2, $t1	# pultimo
while:
	bge		$t1, $t2, endw		# while (p < pultimo){
	lw		$a0, 0($t1)		#
	li		$v0, print_string			#	
	syscall					#	
	
	li		$a0, '\n'
	li		$v0, print_char
	syscall					#	
	
	addi		$t1, $t1, 4		# 
	j		while			#
endw:
	jr		$ra				#

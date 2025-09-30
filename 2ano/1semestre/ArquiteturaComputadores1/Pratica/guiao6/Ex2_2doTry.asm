	.data
	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	SIZE,3
	
str1: .asciiz "Array"
str2: .asciiz "de"
str3: .asciiz "ponteiros"

array: .word str1, str2, str3
# Mapa de Registos
	# $t1 = &array
	# $t2 = pultimo = &array + SIZE
	.globl main
	.text
main:
	la		$t1, array		#t1 = &array
	li		$t0, SIZE
	sll		$t0, $t0, 2
	addu	$t2, $t1, $t0	#t2 = pultimo = array + SIZE
for:
	bge		$t1, $t2, endfor	#for(; p < pultimo; p++)
	
	lw		$t3, 0($t1)		#t3 = *p
	
	li		$v0, print_string
	move	$a0, $t3
	syscall					#print_string(*p)
	
	li		$v0, print_char
	li		$a0, '\n'
	syscall					#print_char('\n')
	

	addi	$t1, $t1, 4		#i++
	j		for
endfor:
	jr		$ra

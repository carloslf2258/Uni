	.data
	.eqv SIZE, 3
str1: .asciiz "Array"
str2: .asciiz "de"
str3: .asciiz "ponteiros"
array: .word str1, str2, str3

	.eqv print_string, 4
	.eqv print_char, 11
	.text
	.globl main
#Mapa de registos:
#i: $t0
#p: t1
#array[i]: t2
main:
	li	$t0, 0			# i = 0
for:
	bge	$t0, SIZE, endfor	#for(i=0; i < SIZE; i++)
	
	la	$t1, array		# p = &array
	sll	$t2, $t0, 2			#t2 = i*4
	addu $t2, $t2, $t1		#$t2 = array + i*4 = &array[i]
	lw	$t2, 0($t2)			#t2 = array[i]
		
	li	$v0, print_string
	move	$a0, $t2
	syscall				#print_string(array[i])


	li	$v0, print_char
	li	$a0, '\n'
	syscall				#print_char('\n')
	addi	$t0, $t0, 1		#i++
	j	for
endfor:
	jr	$ra

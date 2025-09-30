	.data
	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	SIZE,3
	.eqv	print_int10, 1
	
str1: .asciiz "Array"
str2: .asciiz "de"
str3: .asciiz "ponteiros"
str4: .asciiz "\nString #"
str5: .asciiz ": "

array: .word str1, str2, str3
# Mapa de Registos
	# $t0 = i
	# $t1 = j 
	# $t2 = &array
	# $t3 = array[i][j]
	.globl main
	.text
main:

	li		$t0, 0		#i = 0
for:
	bge		$t0, SIZE, endfor
	
	li		$v0, print_string
	la		$a0, str4
	syscall				#print_string( "\nString #" );
	
	li		$v0, print_int10
	move	$a0, $t0 
	syscall				#print_int10( i ); 
	
	li		$v0, print_string
	la		$a0, str5
	syscall				#print_string( ": " );
	
	
	li		$t1, 0		# j = 0
while:
	#calcular array[i]
	la		$t2, array
	sll		$t3, $t0, 2		# i*4
	addu	$t3, $t2, $t3	# t3 = &array[i]
	#calcular array[i][j]
	lw		$t3, 0($t3)		# t3 = array[i][0]
	addu	$t3, $t3, $t1	# t3 = &array[i][j]
	lb		$t3, 0($t3)		# t3 = array[i][j]
	
	beq		$t3, '\0', endwhile	
	
	li		$v0, print_char
	move		$a0, $t3
	syscall			#print_char(array[i][j]);
	
	li		$a0, '-'
	syscall			#print_char('-');
	
	addi	$t1, $t1, 1
	j		while
endwhile:
	addi	$t0, $t0, 1		#i++
	j		for
endfor:
	jr		$ra

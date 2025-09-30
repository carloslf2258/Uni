	.data
	
str1: .asciiz "Introduza 2 numeros "
str2: .asciiz "A soma dos dois numeros e: "	
	.eqv	print_str, 4
	.eqv 	read_int, 5
	.eqv	print_int, 1
	.text
	.globl main
main:
#t0 = a
#t1 = b
#t2 = a + b
	la	$a0, str1
	ori	$v0, $0, print_str
	syscall				#print_str("Introduza 2 numeros ")
	
	ori	$v0, $0, read_int
	syscall				#read_int()
	or	$t0, $v0, $0	# a = read_int()
	 
	syscall				#read_int()
	or	$t1, $v0, $0	# b = read_int()
	
	la	$a0, str2
	ori	$v0, $0, print_str
	syscall				#print_string("A soma dos dois numeros e': ");
	
	add $t2, $t1, $t0	#t2 = a + b
	
	ori	$v0, $0, print_int
	or	$a0, $0, $t2
	syscall				#print_int10(a + b);
	
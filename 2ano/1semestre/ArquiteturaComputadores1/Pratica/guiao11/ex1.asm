#	Nome		Alinham		Dimensao		Offset
#	id_number	4				4			0
#	first_name	1				18			4	
#	last_name	1				15			22
#	grade		4				4			40
#	student		4				44
	.eqv id_number, 0
	.eqv first_name, 4
	.eqv last_name, 22
	.eqv grade, 40
	.eqv print_str, 4
	.eqv print_intu10, 36
	.eqv print_char, 11
	.eqv print_float, 2
	.data
str0:	.asciiz	"Primeiro nome:"
		.align 2
stg0: 	.space 44		#Acho que n é preciso

stg: 	.word	72343
		.asciiz	"Napoleao"
		.space 	9					#espaço que sobra 18-9=9
		.asciiz	"Bonaparte"
		.space	5					#espaço que sobra
		.float	5.1
		
str1:	.asciiz	"\nN. Mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "
str4:	.asciiz ", "
	
	.text
	.globl main
main:
	la	$t0, stg

	la	$a0, str1
	li	$v0, print_str
	syscall				#print_str("\nN. Mec: ")
	
	li	$v0, print_intu10
	lw	$a0, id_number($t0)
	syscall				#print_intu10(stg.id_numer)
	
	la	$a0, str2
	li	$v0, print_str
	syscall				#print_str("\nNome: ")
	
	addiu	$a0, $t0, last_name
	li	$v0, print_str
	syscall				#print_str(stg.last_name)
	
	li	$v0, print_char
	li	$a0, ','
	syscall				#print_char(',');
	
	addiu	$a0, $t0, first_name
	li		$v0, print_str
	syscall				#print_string(stg.first_name);
	
	la		$a0, str3
	li		$v0, print_str
	syscall				#print_string("\nNota: ");
	
	li		$v0, print_float
	l.s		$f12, grade($t0)
	syscall				#print_float(stg.grade);
	
	li		$v0, 0		#return 0;
	
	
	jr	$ra

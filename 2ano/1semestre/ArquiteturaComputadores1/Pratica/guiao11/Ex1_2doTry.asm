#	Nome		Alinham		Dimensao		Offset
#	id_number	4				4			0
#	first_name	1				18			4	
#	last_name	1				15			22
#	grade		4				4			40
#	student		4				44
	.data
	.align 2
	
	.eqv id_number, 0
	.eqv first_name, 4
	.eqv last_name, 22
	.eqv grade, 40
	
	.eqv print_str, 4
	.eqv print_intu10, 36
	.eqv print_char, 11
	.eqv print_float, 2
	.eqv read_int, 5
	.eqv read_string, 8
	
stg:	.word 72343
		.asciiz "Napoleao"
		.space 9
		.asciiz "Bonaparte"
		.space 5
		.space 3		#alinhamento
		.float 5.1
		
stg2: 	.align 2
		.space 44
		
str0: .asciiz "\nN. Mec: "
str1: .asciiz "\nNome: "
str2: .asciiz "\nNota: "
str3: .asciiz "\nPrimeiro Nome: "
		
	.text
	.globl main
main:
	la	$t0, stg	#student1 inicializado
	
	la	$t2, stg2	#student2
	
	li	$v0, print_str
	la	$a0, str0	
	syscall				#print_string("\nN. Mec: ");
	
	li	$v0, read_int	#1_b
	syscall			
	move	$t1, $v0	#t1 = read_int()	
	sw		$t1, id_number($t0)	#stg.id_number = read_int(); 
	
	li	$v0, print_str
	la	$a0, str3
	syscall				#print_string("Primeiro Nome: ");
	
	li	$v0, read_string
	addiu	$a0, $t0, first_name	#a0 = base_do_estudante + offset
	li	$a1, 17			#tamanho max de caracteres
	syscall				#read_string(stg.first_name, 17);
	
	
	
	#id_number
	lw	$t1, id_number($t0)
	
	li	$v0, print_intu10
	move	$a0, $t1	
	syscall				#print_intu10(stg.id_number);
	
	li	$v0, print_str
	la	$a0, str1	
	syscall				#print_string("\nNome: ");
	
	li	$v0, print_str
	addiu	$a0, $t0, last_name	
	syscall				#print_string(stg.last_name);
	
	li	$v0, print_char
	li	$a0, ','	
	syscall				#print_char(',')
	
	li	$v0, print_str
	addiu	$a0, $t0, first_name	#first_name
	syscall				#print_string(stg.first_name);
	
	li	$v0, print_str
	la	$a0, str2	
	syscall				#print_string("\nNota: "); 
	
	li	$v0, print_float
	l.s	$f12, grade($t0)	#grade
	syscall				#print_float(stg.grade);
	
	
	jr	$ra
	
	
	
	

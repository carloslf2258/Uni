#INCOMPLETO
		.data
	.eqv	print_string, 4
	.eqv	print_int10, 1
	.eqv	STR_MAX_SIZE, 30
str: .asciiz "ITED - orievA ed edadisrevinU"
str1: .asciiz "I serodatupmoC ed arutetiuqrA"
str_line: .asciiz "\n"
str_too_long: .asciiz "String too long: "
	.align 2
str2: .space 32
	.text
	.globl main
main:
	addiu	$sp, $sp, -4
	sw		$ra, 0($sp)
	
	li	$t0, 1		#exit_value = 1
if:

	li	$v0, print_string
	move	$a0, ...
	syscall				#print_string(str2);
	
	move	$a0, str_line
	syscall				#print_string("\n");
	
	li	$v0, print_string
	move	$a0, ...
	syscall				#print_string(strrev(str2));
	
	#exit_value = 0
else:
	li	$v0, print_string
	move	$a0, str_too_long
	syscall				#print_string("String too long: ");
	
	li	$v0, print_int10
	
	syscall
	
	#exit_value = -1
endif:
	
	lw		$ra, 0($sp)
	addiu	$sp, $sp, 4
	
	jr	$ra
	
	
	
#======================================================
#char *strcpy(char *dst, char *src)
#...

strcpy:

str_strcpy_do:


	j str_strcpy_do
str_strcpy_while:
	
	
	jr	$ra
	.data
	.eqv id_number, 0
	.eqv first_name, 4
	.eqv last_name, 22
	.eqv grade, 40
	
	.eqv print_intu10, 36
	.eqv print_string, 4
	.eqv print_float, 2
	
str1_printstudent:	.asciiz "\nN. Mec: "
str2_printstudent:	.asciiz "\nPrimeiro Nome: "
str3_printstudent:	.asciiz "\nUltimo Nome: "
str4_printstudent:	.asciiz "\nNota: "

	.text
print_student:			#void print_student(student *p) {
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	
	move $t0, $a0
	
	la $a0, str1_printstudent
	li $v0, print_string
	syscall
	
	lw $a0, id_number($t0)
	li $v0, print_intu10
	syscall			#	print_intu10(p->id_number);
	
	la $a0, str2_printstudent
	li $v0, print_string
	syscall
	
	addiu $a0, $t0, first_name
	li $v0, print_string
	syscall			#	print_string(p->first_name);
	
	la $a0, str3_printstudent
	li $v0, print_string
	syscall
	
	addiu $a0, $t0, last_name
	li $v0, print_string
	syscall			#	print_string(p->last_name);
	
	la $a0, str4_printstudent
	li $v0, print_string
	syscall
	
	l.s $f12, grade($t0)
	li $v0, print_float
	syscall			#	print_float(p->grade);
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra			#}
	
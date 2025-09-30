	.data
	.eqv id_number, 0
	.eqv first_name, 4
	.eqv last_name, 22
	.eqv grade, 40
str1_readdata:	.asciiz "N. Mec: "
str2_readdata:	.asciiz "Primeiro Nome: "
str3_readdata:	.asciiz "Ultimo Nome: "
str4_readdata:	.asciiz "Nota: "
	.text
read_data:			#void read_data(student *st, int ns) {
	addiu $sp, $sp, -4
	sw $ra, 0($sp)

	li $t0, 0		#	int i = 0
	move $t1, $a0		# //t1 = st
	move $t2, $a1		# //t2 = ns
	
rd_for:				#	for(i=0; i < ns; i++) 
	bge $t0, $t2, rd_endf
	mul $t3, $t0, 44
	addu $t3, $t3, $t1	# //&arr[i]
	
	la $a0, str1_readdata
	li $v0, 4
	syscall			#	print_string("N. Mec: ");
	
	li $v0, 5
	syscall
	sw $v0, id_number($t3)	#	st[i].id_number = read_int();
	
	la $a0, str2_readdata
	li $v0, 4
	syscall 		#	print_string("Primeiro Nome: ");
	
	addiu $a0, $t3, first_name
	li $a1, 17 #dimen´ão maxima menos um
	li $v0, 8
	syscall			#	read_string(st[i].first_name, 17); 
	
	la $a0, str3_readdata
	li $v0, 4
	syscall 		#	print_string("Ultimo Nome: "); 
	
	addiu $a0, $t3, last_name
	li $a1, 14 #dimencao maxima menos um
	li $v0, 8
	syscall			#	read_string(st[i].first_name, 17); 
	
	la $a0, str4_readdata
	li $v0, 4
	syscall 		#	print_string("Nota: "); 
	
	li $v0, 6
	syscall
	s.s $f0, grade($t3)	#	st[i].grade = read_float();
	
	addi $t0, $t0, 1	#	i++
	j rd_for
rd_endf:
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra			# }

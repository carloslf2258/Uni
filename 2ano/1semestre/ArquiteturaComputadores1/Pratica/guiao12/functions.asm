	.data
	.eqv	id_number, 0
	.eqv	first_name, 4
	.eqv	last_name, 22
	.eqv	grade, 40
	
str1:	.asciiz "\nMedia: "
str2:	.asciiz	"\nPrimeiro nome: "
str3:	.asciiz	"\nÚltimo nome: "
str4:	.asciiz	"\nNota: "
		#.align 2
	.text
#i -> $t0; 
#*st -> $t1; 
#ns -> $t2; 
#&(st[i]) -> $t3
read_data:
	li		$t0,0				# i = 0;
	move	$t1,$a0			# t1 = *st
	move	$t2,$a1			# t2 = ns
for:
	bge	$t0, $t2, endfor		#while(i<ns){
	# Endereco do primeiro campo do estudante
	mul		$t3, $t0, 44	# i*44
	addu	$t3, $t3, $t1		#student *pt = &(st[i])
	
	# Obter numero mecanografico
	la		$a0, str1
	li		$v0, 4			
	syscall					#print_str("\nMedia: ")
	
	li		$v0, 5
	syscall					#st[i].id.numer = read_int
	sw		$v0, id_number($t3)
	
	# Obter primeiro nome
	la		$a0,str2
	li		$v0,4
	syscall					#print_str("\nPrimeiro nome: ")
	
	li		$v0, 8
	addiu	$a0, $t3, first_name
	li		$a1,17
	syscall					#read_string(st[i].first_name)
	
	# Obter ultimo nome
	la		$a0,str3
	li		$v0, 4			#print_str("\nÚltimo nome: ")
	syscall
	
	li		$v0, 8
	addiu	$a0, $t3, last_name
	li		$a1, 14
	syscall					#read_string(st[i].last_name)
	
	# Obter nota
	la		$a0, str4
	li		$v0, 4
	syscall					#print_str("\nNota: ")
	
	li		$v0,6
	syscall
	s.s		$f0, grade($t3)	#st[i].grade = read_float
	
	# Proximo elemento
	addiu	$t0, $t0, 1		#i++;
	j	for
endfor:
	jr	$ra
#############################################################################################
	.data
	.eqv	grade, 40
f0: 	.float 0.0
f20: 	.float -20.0
	.text
#st -> $a0; ns -> $a1; media -> $a2; p -> $t0; pmax -> $v0; (st+ns) -> $t1
max: 					#student *max(student *st, int, float *){
	la		$t9, f20
	l.s		$f0, 0($t9)		#max_grade = -20.0;
	la		$t9, f0
	l.s		$f2, 0($t9)		#sum = 0.0;
	move	$t0, $a0		#p = st;
	mul		$t1, $a1, 44
	addu	$t1, $t1, $a0	#student *pf = (st + ns);
max_wh:
#Comparação unsigned -> são ponteiros (n podem ser negativos)
	bgeu	$t0, $t1, max_ew	#while (p < pf){
	l.s		$f4, grade($t0)
	add.s	$f2, $f2, $f4		#sum += p->grade
max_if:
	c.le.s	$f4, $f0		#if (p->grade > max_grade)
	bc1t	max_endif		#	max_grade = p->grade;
	mov.s	$f0, $f4		#	pmax = p;
	move	$v0, $t0
max_endif:
	addiu	$t0, $t0, 44	#p++
	j		max_wh			#}
max_ew:
	mtc1	$a1, $f6		# f6 = ns
	cvt.s.w	$f6, $f6		# ns = (float) ns
	div.s	$f6, $f2, $f6	#ftmp = sum / (float) ns;
	s.s		$f6, 0($a2)		#*media = ftmp;
	
	jr		$ra				#return pmax

#=======================================
# ACABAR
#void print_student(student *p)
	.data
	.eqv print_intu10, 36
	.eqv print_string, 4
	.eqv print_float, 2
	.text
# a0 -> *p
print_student:
	la	$t0, $a0	# t0 = p
	
	li	$v0, print_intu10
	lw	$a0, 0($t0)
	syscall					#print_intu10(p->id_number); 
	
	li	$v0, print_string
	addiu	$a0, ...
#print_string(p->first_name); 
	
	li	$v0, print_string
#print_string(p->last_name); 
	
	li	$v0, print_float
#print_float(p->grade); 
 
	jr	$ra

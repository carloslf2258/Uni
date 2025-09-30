	.data
max_grade: .float -20.0
sum:	.float 0.0
	.eqv grade, 40
	.text
# st-> a0, ns -> a1, media -> a2, p -> t0, pmax -> v0, st+ns -> t1
max:				#student *max(student *st, int ns, float *media) 
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	
	la $t9, max_grade
	l.s $f0, 0($t9)		#	float max_grade = -20.0; 
	la $t9, sum
	l.s $f2, 0($t9)		#	float sum = 0.0; 
	
	move $t0, $a0 #p = st
	mul $t1, $a1, 44
	addu $t1, $t1, $a0 # st+ns
	
max_for:			#	for(p = st; p < (st + ns); p++) 
	bgeu $t0, $t1, max_endf
	l.s $f4, grade($t0) #se calhar t0
	add.s $f2, $f2, $f4
max_if:
	c.le.s $f4, $f0
	bc1t max_endif		#		if(p->grade > max_grade)
	mov.s $f0, $f4		#			max_grade = p->grade; 
	move $v0, $t0		#			pmax = p; 
max_endif:
	addiu $t0, $t0, 44 #p++
	j max_for
max_endf:
	mtc1 $a1, $f6
	cvt.s.w $f6, $f6
	div.s $f6, $f2, $f6	#	*media = sum / (float)ns; 
	s.s $f6, 0($a2)
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra

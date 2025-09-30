# typedef struct
# {                     Align   Size    Offset
#   int acc;                4      4         0
#   unsigned char nm;       1      1         4
#   double grade;           8      8       5-8
#   char quest[14];         1     14        16
#   int cq;                 4      4     30-32
# } t_kvd                   8  36-40

# Mapa de registos
# nv: $t2
# pt: $t3
# i: $t0
# j: $t1
# sum: $f2
    	.data
sum:    .double 0.0
    	.text
func4:					#double func4(int nv, t_kvd *pt) {
	
	move $t2, $a0
	mov.d $f0, $f12
	li $t0, 0			#	int i = 0;
	la $t1, sum
	l.d $f2, 0($t1)			#	double sum = 0.0;
func4_for:
	bge $t0, $t2, func4_endf	#	for(i = 0; i < nv, i++, pt++) {
	li $t1, 0			#		j = 0;
func4_do:				#		do {
	addi $t4, $t3, 16 #tmp = pt->quest[0]
	add $t4, $t4, $t1 # tmp = &quest[j] 
	l.d $f4, 0($t4) # pt->quest[0]
	cvt.d.w $f4, $f4 # (double) pt->quest[0]
	add.d $f2, $f2, $f4		#			sum + = (double) pt->quest[j]; NAO SEI SE É ASSIM OMG
	addi $t1, $t1, 1		#			j++;
	
	#lw $t5,4($t3) # tmp2 = pt->nm MENTIRAAA
	addi $t5, $t3, 4 # tmp2 = pt->nm deve ser assim n sei
	blt $t1, $t5, func4_do		#		} while (j < pt->nm);
	
	l.d $f6, 8($t3) # tmp3 = pt->grade
	div.d $f6, $f2, $f6 # tmp3 = sum/pt->grade
	cvt.w.d $f6, $f6 # (int) (sum / pt->grade)
	mfc1 $t7, $f6 # t7 = (int) (sum / pt->grade)
	sw $t7, 0($t3)			#		pt->acc = (int) (sum / pt->grade)
	
	addi $t0, $t0, 1 # i++
	addiu $t3, $t3, 40 # pt++ (tamanho do struct)
	j func4_for			#	}
func4_endf:
	lw $t8, 32($t3) # tmp4 = pt->cq
	mtc1 $t8, $f8 # f8 = pt->cq
	cvt.d.w $f8, $f8 # (double) pt->cq
	l.d $f10, 8($t3)
	mul.d $f0, $f10, $f8		#	return (pt-grade * (double) pt->cq)
	
	
	jr $ra
	

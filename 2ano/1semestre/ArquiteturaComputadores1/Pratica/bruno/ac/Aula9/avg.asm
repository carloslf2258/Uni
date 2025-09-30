#Mapa de registos
# i : $t0
# array : $t1
	.data 
	.text

average:			#double average(double *array, int n)
	move $t0, $a1
	addiu $t0, $t0, -1
	
	mtc1 $0, $f0
	cvt.d.w $f0, $f0 	# double sum = 0.0
	
for:				#for(;i>=0, i--)
	blt $t0, $0, endf
	
	la $t1, $a0		# //t1 = array
	addu $t2, $t1, $t0	# //t2 = array[i]
	mtc1 $t2,$f2		# f2 = array[i]; 
	add.d $f0, $f0, $f2	# sum += f2
	addiu $t0, $t0, -1	#	i--;
	j for
endf:
	#return sum / (double)n; 
	jr $ra

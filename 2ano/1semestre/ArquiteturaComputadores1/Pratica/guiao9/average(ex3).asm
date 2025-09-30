
############################################################################
# VERSÃO DO PROF (CERTA) -> COMPARAR COM A DE CIMA

#Mapa de registos:
#array: $a0
#n: $a1
#i: $t0
average:
	mtc1	$0, $f0			#sum = 0.0
	cvt.d.w	$f0, $f0
	
	addi	$t0, $a1, -1	# i = n-1
	
for:  
	blt 	$t0, $0, endf	# (i=>0)
	sll	$t1, $t0, 3			#i*8
	addu 	$t1, $a0, $t1	#array + i
	
	l.d	$f4, 0($t1)
	add.d	$f0, $f0, $f4
	
	addi	$t0, $t0, -1
	j	for
endf:
	mtc1 $a1, $f2
	cvt.d.w	$f2, $f2
	div.d 	$f0, $f0, $f2		# return sum / (double) n
	
	jr	$ra

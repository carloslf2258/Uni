 	.data 
 	
 	.eqv	read_int, 5
 	.eqv	print_int10, 1
 	
 	.text 
 	.globl main 
main: 
#valores de entrada desejados
	ori	$v0, $0, read_int
	syscall				#read_int()
	or $t0,$0, $v0 	#t0
	
	ori	$v0, $0, read_int
	syscall				#read_int()
	or $t1,$0, $v0 	#t1
	
	#Ta a dar problemas com a leitura de em cima
	li	$t0, 0x1234
	li	$t1, 0x000F
	 
 	and $t2,$t0,$t1 # $t2 = $t0 & $t1 (and bit a bit)
 	or 	$t3,$t0,$t1 # $t3 = $t0 | $t1 (or bit a bit) 
 	nor	$t4,$t0,$t1	# $t4 = $t0 ~ $t1
 	xor $t5,$t0,$t1 # $t5 = $t0 ^ $t1
 	
 	#Alínea C
 	nor $t6, $0, $t0

 	jr $ra # fim do programa
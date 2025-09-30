	.data 
 	.text 
 	.globl main
 	
 	#$t0 = bin; $t1 = temp; $t2 = gray
main: li $t0, 2 		#bin = valor_x
	srl $t1, $t0, 1		#temp = bin >> 1
	xor $t2, $t0, $t1	#gray = bin ^ temp
 	
 	jr $ra # fim do programa

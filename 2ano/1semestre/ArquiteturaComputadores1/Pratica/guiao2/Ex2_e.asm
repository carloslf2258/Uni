	.data 
 	.text 
 	.globl main
 	
 	#$t0 = gray; $t1 = num; $t2 = bin
 	
 	#temp1 = $t3;
 	
main: li $t0, 2 		#gray = valor_x
	or $t1, $0, $t0		#num = gray
	
	srl $t3, $t1, 4		#temp1 = num >> 4
	xor $t1, $t1, $t3	#num = num ^ (temp1)
	
	srl $t3, $t1, 2		#temp1 = num >> 2
	xor $t1, $t1, $t3	#num = num ^ (temp1)
	
	srl $t3, $t1, 1		#temp1 = num >> 1
	xor $t1, $t1, $t3	#num = num ^ (temp1)
	
	or $t2, $0, $t1
 	
 	jr $ra

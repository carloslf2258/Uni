	.data
	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	print_int10,1
	.eqv	SIZE,3
str1:	.asciiz	"Array"
str2:	.asciiz "de"
str3: 	.asciiz "ponteiros"
prp1:	.asciiz	"\nString #"
prp2:	.asciiz	": "
array:	.word	str1,str2,str3
	.text
	.globl main
	
	# Mapa de Registos
	# $t0 = i
	# $t1 = j
	# $t3 = array[i][j]
	
main:
	li	$t0,0            	#i = 0;
for:
	bge	$t0,SIZE,endfor  	#if (i < SIZE)
	la	$a0,prp1
	li	$v0,print_string
	syscall 				#print_string( "\nString #" );
	or	$a0,$0,$t0
	li	$v0,print_int10
	syscall					#print_int10( i ); 
	la	$a0,prp2
	li	$v0,print_string
	syscall					#print_string( ": " );
	li	$t1,0				# j = 0;
while:
	la	$t3,array
	mul	$t2,$t0,4
	addu	$t3,$t3,$t2
	lw	$t3,0($t3)			#t3 = array[i][0]
	addu	$t3,$t3,$t1
	lb	$t3,0($t3)			#t3 = array[i][j]
	
	beq	$t3,'\0',endwhile	#while(array[i][j] != '\0')
	
	or	$a0,$0,$t3
	li	$v0,print_char
	syscall					#print_char(array[i][j]);
	li	$a0,'-'
	syscall					#print_char('-');
	addiu	$t1,$t1,1		#j++;
	j	while
endwhile:
	addiu	$t0,$t0,1		#i++;
	j	for
endfor:
	jr	$ra

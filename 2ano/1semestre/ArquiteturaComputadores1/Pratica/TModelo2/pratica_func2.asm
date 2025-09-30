#Mapa de registos:
#f1: s2
#k:	 s1
#av: s3	
#i: s0
#res: Ns se é preciso salvaguardar, penso que sim, mas o Bruno n fez assim
 .data
 .eqv print_int10, 1
 .eqv print_string, 4
 .eqv SIZE, 15
str:	.asciiz	"Invalid argc"
 .text
 .globl main
main:
#salvaguardar $ra, f1, k, av, i
	addiu	$sp, $sp, -20
	sw		$ra, 0($sp)
	sw		$s0, 4($sp)
	sw		$s1, 8($sp)
	sw		$s2, 12($sp)
	sw		$s3, 16($sp)
	
	move	$s2, $a0	#*f1 = s2
	move	$s1, $a1	#k = s1
	move	$s3, $a2	#*av[] = s3
	
if:
	blt		$s1, 2, else
	bgt		$s1, SIZE, else	#if (k >= 2 && k <= SIZE){
	li		$s0, 2		#i = 2
do:
	addu	$a0, $s3, $s0	#a0 = av[i]
	jal		toi				#toi(av[i])
	mul		$s0, $s0, 4
	addu	$t1, $s0, $s2	#t1 = fl[i]
	sw		$v0, 0($t1)
	#Não sei bem se é assim??
	#move	$s2, $t1??
	addiu	$s0, $s0, 1		#i++
while:
	blt		$s0, $s1, do	#while(i < k)
	
	
	move	$a0, $s2		#a0 = f1
	move	$a1, $s1		#a1 = k
	jal avz
	move	$t4, $v0		#t4 = avz(f1, k)
	move	$a0, $v0
	li		$v0, print_int10
	syscall 				#print_int10(res)
	move	$v0, $t4		#Devolver o res (v0 foi usado para o syscall)
	
	j 		endif
else:
	li		$v0, print_string
	la		$a0, str
	syscall				#print_string(str)
	li		$v0, -1		#res = -1
	
endif:
	jr		$ra

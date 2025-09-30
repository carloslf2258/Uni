#Mapa de registos
#val: $t3
#n: $t0
#min: $t1
#max: $t2
	.data
	.eqv print_string, 4
	.eqv print_int10, 1
	.eqv print_char, 11
	.eqv read_int, 5
str1: .asciiz "Digite ate 20 inteiros"
str2: .asciiz "Máximo/mínimo são: "
	
	.text
	.globl main
main:
	li	$t0, 0		#n = 0;
	li	$t1, 0x7FFFFFFF		#min
	li	$t2, 0x80000000		#max
	
	li	$v0, print_string
	la	$a0, str1
	syscall				#print_string(str1)
	
do:
	ori $v0, $0, read_int
	syscall #read_int()
	
	move $t3, $v0 # $t0 = val
	
if1:
	beq	$t3, 0, endif1
if2:
	ble	$t3, $t2, endif2
	move $t2, $t3
endif2:
	
if3:
	bge	$t3, $t1, endif3
	move $t1, $t3
endif3:

endif1:
	
	addi	$t0, $t0, 1		#n++
	
	bge	$t0, 20, end
	bne	$t3, 0, do
end:

	li	$v0, print_string
	la	$a0, str2
	syscall				#print_string(str2)		
	
	li	$v0, print_int10
	move	$a0, $t2
	syscall				#print_int10(max)
	
	
	
	li	$v0, print_char
	li	$a0, ':'
	syscall				#print_char(':')
	
	li	$v0, print_int10
	move	$a0, $t1
	syscall				#print_int10(min)
	jr 	$ra
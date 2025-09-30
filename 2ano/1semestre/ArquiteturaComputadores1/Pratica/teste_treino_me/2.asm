#v : $t2
#v1: $t3
#i : $t0
#size/2 : $t4
#arr: $t1
	
	.data
	.eqv SIZE,8
        .eqv print_string,4
        .eqv print_char,11
        .eqv print_int10,1
str1:   .asciiz "Result is: \n"
val: .word 8, 4, 15, -1987, 327, -9, 27, 16	
	.text
	.globl main
main:
	li	$t0, 0		#i = 0
do1:
	la	$t1, val	#v = val[i]
	
	sll $t5, $t0, 2 # $t5 = i*4
	addu $t1, $t1, $t5
	
	lw		$t2, 0($t1)		#v = val[i]
	
	li	$t4, SIZE
	sll $t4, $t4, 2 # $t4 = SIZE * 4
	div $t4, $t4, 2  # $t4 = SIZE / 2
	
	addu	$t1, $t1, $t4	#$t1 = &val[i+SIZE/2]
	
	lw $t3, 0($t1)	#3 = arr[i+size/2]
	
	sw	$t2, 0($t1)		# val[i] = val[i+SIZE/2]
	sub $t1, $t1, $t4
	sw	$t3, 0($t1)		# val[i+SIZE/2] = V
	
	addi	$t0, $t0, 1		#i++
	srl $t4, $t4, 2
	blt	$t0, $t4, do1
end1:

	la $a0,str1
	ori $v0, $0,print_string
	syscall #print_string(str1)
	
	li $t0, 0 # i = 0
do2:
    la $t2, val    #arr(0)
    sll $t1, $t0, 2
    add $t2, $t1, $t2 #arr+i
    lw $a0,0($t2)
    li $v0,print_int10
    syscall #print_int10(val[i++])
	
	li $a0, ','
	ori $v0, $0, print_char
	syscall #print_char(',')
	
	addi $t0, $t0,1
	
	blt	$t0, SIZE, do2
end2:
	jr	$ra
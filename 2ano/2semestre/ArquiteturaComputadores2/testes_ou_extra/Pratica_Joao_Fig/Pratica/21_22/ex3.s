    .data
    .equ ADDR_BASE_HI, 0xBF88
    .equ TRISE, 0x61000
    .equ RESET_CORE_TIMER,11
    .equ READ_CORE_TIMER,12
    .equ print_int,6
    .text
    .globl main

main:
    addiu $sp, $sp,-4
    sw $ra,0($sp)

    lui $t1,ADDR_BASE_HI
    lw $t2,TRISE($t1)
    ori $t2,0xFF12
    sw $t2,TRISE($t1)

    li $t3,0x0b1001
    li $t4,0x0b0110

while:  
    
    lw $t2,LATE($t1)
    ori ori $t2,0xFF12
    or $t2,$t2,$t3
    sw $t2,LATE($t2)


    li $t5,4
    sll $t5,$t5,16
    mul $t5,$t5,2

    move $a0,$t3

    li $v0,print_int
    move $a1,$t5
    syscall

    
    la $a0,2857142
    jal delay


    lw $t2,LATE($t1)
    ori ori $t2,0xFF12
    or $t2,$t2,$t4
    sw $t2,LATE($t2)

    li $t5,4
    sll $t5,$t5,16
    mul $t5,$t5,2

    move $a0,$t4

    li $v0,print_int
    move $a1,$t5
    syscall

    j while

delay:
    li $v0,RESET_CORE_TIMER
    syscall

    li $t6,20000
    mul $a0,$a0,$t6

    bge READ_CORE_TIMER,$a0,wait

wait:
    jr $ra













    
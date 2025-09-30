    .data
    .equ ADDR_BASE_HI,0xBF88
    .equ TRISE,0x6100 
    .equ LATE, 0x6120
    .equ printChar, 3
    .text
    .globl main

main:
    addiu $sp,$sp,-4
    sw $ra,0($sp)

    lui ADDR_BASE_HI,$t1
     
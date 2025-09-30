# Mapa de registos
# f1: $s2
# k: $s1
# av: $s3
# i: $s0
# res: $t4

    	.data
    	.eqv SIZE, 15           ##define SIZE 15
str1:   .asciiz "Invalid argc"
    	.text
func2:                      #int func2(int *f1, int k, char *av[]) {
    addiu $sp, $sp, -20
	sw $s3, 16($sp)
	sw $s2, 12($sp)
	sw $s1, 8($sp)
	sw $s0, 4($sp)
	sw $ra, 0($sp)

    	move $s2, $a0	#*f1 = s2
    	move $s1, $a1	#k = s1
    	move $s3, $a2	#*av[] = s3
if: 
    	blt $s1, 2, else
    	bgt $s1, SIZE, else     #   if ((k >= 2) && (k <= SIZE)) {
    	li $s0, 2               #       i = 2;
do:                         #       do {
    	addu $t6, $s3, $s0
    	lw $a0, 0($t6) # a0 = av[i]
    	jal toi
    	
    	sll $t0, $s0, 2
    	add $t5, $s2, $t0
    	sw $v0, 0($t5)          #           f1[i] = toi(av[i]);
    	addi $s0, $s0, 1        #           i++;
while:
   		blt $s0, $s1, do        #       } while (i < k);

    	move $a0, $s2
   		move $a1, $s1
    	jal avz
    	move $t4, $v0           #       res = avz(f1, k);
    
    	move $a0, $t4
    	li $v0, 1
    	syscall                 #       print_int10(res);
    	j endif
else:                       #   } else {
    	la $a0, str1
    	li $v0, 4
    	syscall                 #       print_string("Invalid argc");
    	li $t4, -1              #       res = -1 //not sure if this is allowed i forgor
endif:
    lw $s3, 16($sp)
	lw $s2, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, 0($sp)
	addiu $sp, $sp, 20

    	move $v0, $t4           #   return res;
    	jr $ra


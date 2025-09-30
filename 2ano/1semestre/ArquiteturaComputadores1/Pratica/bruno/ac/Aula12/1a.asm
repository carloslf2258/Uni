#Mapa de registos
	
	.data
	#eqv dos offsets da struct
	.eqv id_number, 0
	.eqv first_name, 4
	.eqv last_name, 22
	.eqv grade, 40
	
	.eqv MAX_STUDENTS, 4
	.eqv print_str, 4
	.eqv print_float, 2
	
str1:	.asciiz	"\nMedia: "
	.align 2
str_array: .space 176
	#.align 2, aqui sabemos que é multiplo de 4, mas para ser cuidadoso
media:	.space 4
	.text
	.globl main
main:				#int main(void) {
	addiu $sp, $sp, -4
	sw $ra, 0($sp)		#prologo
	#sw $t0, 4($sp)
	
	la $a0, str_array
	li $a1, MAX_STUDENTS
	jal read_data		#	read_data( st_array, MAX_STUDENTS );
	
	la $a0, str_array
	li $a1, MAX_STUDENTS
	la $a2, media		
	jal max
	move $t0, $v0		#	pmax = max( st_array, MAX_STUDENTS, &media ); 
	
	la $a0, str1
	li $v0, print_str
	syscall			#	print_string("\nMedia: ");
	
	la $t1, media
	l.s $f12, 0($t1)	#copiar o enderelço para t1 e por o valor em f12
	li $v0, print_float
	syscall			#	print_float( media ); 
	
	move $a0, $t0
	jal print_student	#	print_student( pmax );
	
	li $v0, 0		#	return 0;
	
	lw $ra, 0($sp)		#epilogo
	#lw $t0, 4($sp)
	addiu $sp, $sp, 4
	jr $ra			# }
	
	.include "readdata.asm"
	.include "max.asm"
	.include "printstudent.asm"

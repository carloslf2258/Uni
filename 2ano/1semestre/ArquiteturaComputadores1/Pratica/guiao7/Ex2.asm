	.data
str:	.asciiz "Arquitetura de Computadores"
	.text
	.globl main
main:						#int main(void){
	addiu	$sp, $sp, -4
	sw		$ra, 0($sp)		#prólogo
	la		$a0, str
	jal		strrev
	
	move 	$a0, $v0
	li 		$v0, 4
	syscall					#print_string(strrev(str));

	lw		$ra, 0($sp)		#epílogo
	addiu	$sp, $sp, 4		
	jr 		$ra				#}
	
	.include "funct2.asm"

	.data
str:	.asciiz "Arquitetura de Computadores"
	.text
	.globl main
main:						#int main(void){
	addiu	$sp, $sp, -4
	sw		$ra, 0($sp)		#prólogo
	la		$a0, str
	jal		strlen
	move	$a0, $v0
	li		$v0, 1
	syscall					#print_int10(str_len(str));
	li 		$v0, 0			#return 0;
	lw		$ra, 0($sp)		#epílogo
	addiu	$sp, $sp, 4		
	jr 		$ra				#}
	 
	.include "funct1.asm"
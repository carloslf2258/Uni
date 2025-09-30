	.data
str:	.asciiz "2020 e 2024 sao anos bissextos"
str2:	.asciiz "101101"
		.text
	.globl main
main:						#int main(void){
	addiu	$sp, $sp, -4
	sw		$ra, 0($sp)		#prólogo
	la		$a0, str2
	jal		atoi		# Para chamar 1_c "jal  atoi_b" 
	
	move	$a0, $v0
	
	li	$v0, 1
	syscall					#print(atoi(str));
	lw		$ra, 0($sp)		#epílogo
	addiu	$sp, $sp, 4		
	
	jr 		$ra				#}
	 
	.include "functions.asm"

	.data
str1: .asciiz "Array"
str2: .asciiz "de"
str3: .asciiz "ponteiros"
array: .word str1, str2, str3
ttt:
	.globl main
	.text
main:						#void main(){
	li		$t0, 0			#i = 0;
	la		$t1, array		#	aux = &(array[i]);
while:
	bge		$t0, 3, endw		#while (i < 3) {
	sll		$t2, $t0, 2		#	$a0 = array[i];
	addu	$t2, $t2, $t1		#
	lw		$a0, 0($t2)		#
	li		$v0, 4			#	
	syscall					#	print_string(array[i]);
	
	li		$a0, '\n'
	li		$v0, 11
	syscall					#	print_char('\n');
	
	addi		$t0, $t0, 1		# i++;
	j		while			#}
	
endw:
	jr		$ra				#}

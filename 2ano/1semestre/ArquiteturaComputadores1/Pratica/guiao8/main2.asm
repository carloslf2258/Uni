#FALTA COMPLETAR, VER QUEST�O DA str
# Mapa de registos 
# str:  $s0 
# val:  $s1 
# O main �, neste caso, uma sub-rotina interm�dia 
  	.data 
str: .space ... 
  	.eqv STR_MAX_SIZE, 33
  	.eqv read_int, 5
  	.eqv print_string, 4
str: .space 33
  	.text 
  	.globl main 
main: 
	addiu $sp, $sp, -12   # reserva espa�o na stack 
	sw $ra, 0($sp     	# guarda $ra na stack  
  	sw $s0, 0($sp)  	 # guarda registos $sx na stack
	sw $s1, 0($sp)
	
do:       # do { 
  	li $v0, read_int 
  	syscall     		
  	move $s1,$v0   		#val = read_int()
  	 
  	(...) 
  	b?? $s1,...   # } while(val != 0) 
  	li ...    # return 0; 
  	(...)     # repoe registos $sx 
  	lw $ra,...   # rep�e registo $ra 
  	addiu $sp,...   # liberta espa�o na stack 
  	
  	jr $ra    # termina programa 
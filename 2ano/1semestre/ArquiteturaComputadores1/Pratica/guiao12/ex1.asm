# typedef struct {
#   unsigned int id_number;
#   char first_name[18];
#   char last_name[15];
#   float grade;
# } student;

# Tabela de Alinhamento

# Align | Size | Offset
#  4    |   4  |   0
#  1    |  18  |   4
#  1    |  15  |  22
#  4    |   4  | 37->40
# ---------------------
#  4    |  44  | ------

	.data
str0:	.asciiz "\nMedia: "
		.align 2
			
	.eqv	print_string,4
	.eqv	read_string,8
	.eqv 	print_intu10,36
	.eqv	read_int,5
	.eqv	print_float,2
	.eqv	read_float,6

	.eqv	id_number, 0
	.eqv	first_name, 4
	.eqv	last_name, 22
	.eqv	grade, 40
	.eqv	MAX_STUDENT, 4

str_array:	.space 176 # Reservar 4* 44 para o array de estruturas
			.align 2	#Neste caso é opcional
media:		.space 4	#Para um float precisa-se de 4 bytes
	.text
	.globl main
#pmax -> $t0
main:								#int main(void){
	addiu	$sp, $sp, -4		#	prologo
	sw		$ra, 0($sp)			# guardar o registo $ra na stack
	
	la		$a0, str_array		
	li		$a1, MAX_STUDENT
	jal		read_data			#read_data(str_array, MAX_STUDENT)
	
	la		$a0, str_array				# Estes valores podem 
	li		$a1, MAX_STUDENT			# ter sido alterados na chamada anterior
	la		$a2, media					# porque as funções podem alterar os registos a, t, s
	jal		max							#Ent temos de definir tdo outra vez para chamar esta função exatamente igual
	move	$t0, $v0			#pmax = max(str_array, MAX_STUDENT)
	
	li		$v0, print_string
	la		$a0, str0
	syscall						#print_str(str0);
	
	la		$t1, media
	l.s		$f12, 0($t1)
	li		$v0, print_float	
	syscall						#print_float(media)
	
	move	$a0, $t0			
	jal		print_student		#print_student(pmax);
	
	li		$v0, 0				#return 0;
	lw		$ra, 0($sp)			#epilogo
	addiu	$sp, $sp, 4
	
	jr		$ra
	
	.include "functions.asm"

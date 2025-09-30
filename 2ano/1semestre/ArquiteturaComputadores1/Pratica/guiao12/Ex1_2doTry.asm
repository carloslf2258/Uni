# typedef struct {
#   unsigned int id_number;
#   char first_name[18];
#   char last_name[15];
#   float grade;
# } student;

# Tabela de Alinhamento

# Align | Size | Offset
# 	4		4		0
#	1		18		4
#	1		15		22
#	4		4		37->40
#	4		44
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
main:
	addiu	$sp, $sp, -8
	sw		$ra, 0($sp)		#prólogo
	
	
	
	
	
	
	
	lw		$ra, 0($sp)		#epílogo
	addiu	$sp, $sp, 8
	
	jr	$ra
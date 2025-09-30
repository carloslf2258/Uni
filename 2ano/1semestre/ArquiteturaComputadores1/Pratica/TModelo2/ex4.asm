# Inicio do segmento de dados 0x1001003c
# Endereço da primeira instrução: 0x00400038
	
	.data
AA:	.asciiz "#F47D3FA2"					# 0x1001003c 	Offset: 0
BB:	.word	5						# 0x10010046 	Offset: 10
CC:	.word	0x52, 0x126c, 0x3A, 0x139A8, 0xABA, 0x7c38	# 0x10010048 	Offset: 12
	.align	2						# 0x1001004c 	Offset: 16
DD:	.space	4						# 0x10010064 	Offset: 40
	.text							# 0x10010068 	Offset: 44
	.globl main
main:	la $t0, CC		# 0x00400038		t0 = &CC[0] ou seja 0x10010048
	la $t1, BB		# 0x00400040		t1 = &BB[0] ou seja 0x10010046
	lw $t1, 0($t1)		# 0x00400048		t1 = BB[0] ou seja 5
	sll $t1, $t1, 2		# 0x0040004C		t1 = t1 * 4 ou seja 20
	addu $t1, $t0, $t1	# 0x00400050		t1 = t0 + t1 ou seja 0x1001003c + 20 = 0x10010050
	xor $t2, $t2, $t2	# 0x00400054		t2 = 0
	
				#			do {
L1:	lw $t3, 0($t0)		# 0x00400058		t3 = CC[0] ou seja 0x52
	lw $t4, 0($t1)		# 0x0040005C		t4 = DD[0] ou seja NULL???????
	sw $t3, 0($t1)		# 0x00400060		DD[0] = t3 ou seja 0x52
	sw $t4, 0($t0)		# 0x00400064		CC[0] = NADA, esvazia
	andi $t4, $t4, 0x0F	# 0x00400068		t4 = 0x0F (acho que é só isso pq t4 literalmente nao tem nada)
	add $t2, $t2, $t4	# 0x0040006C		t2 = t2 + t4 = 0 + 0x0F
	addiu $t0, $t0, 4	# 0x00400070		t0++
	addiu $t1, $t1, -4	# 0x00400074		t1--
	blt $t0, $t1, L1	# 0x00400078		} while ( t0 < t1)
	
L2:	la $t5, DD		# 0x00400080		t5 = &DD[0] ou seja 0x10010050
	sw $t2, 0($t5)		# 0x00400088		DD[0] = t2 ou seja 0x0F
	la $t3, AA		# 0x0040008C		t3 = &AA[0] ou seja 0x1001003c
	lw $v0, 0($t3)		# 0x00400094		v0 = AA[0] ou seja # (ao executar deu me \n wtf)
	jr $ra			# 0x00400098		
	
# O numero todal de posicoes ocupado pela string "AA" e: 				9+1 = 10
# O numero total de posicoes de memoria ocupado pelo segmento de dados e: 		44
# O endereço a que corresponde o label "L2" e: 						0x00400080
# O valor do registo $t0 apos a execucao da primeira instrucao do trecho de codigo e: 	0x10010048
# Se "CC" referenciar um array de inteiros, o endereço de memoria do elemento CC[3] e: 	0x10010048 + 12 = 0x10010054
# O valor do registo $t1 calculado na instrucao "addu $t1, $t0, $t1" e: 		0x10010050
# O valor do registo $t1 no final da execucao do trecho de codigo e: 			?????????
# No final da execucao do programa, o valor armazenado em CC[2] e: 			NAO SEI QUANTAS VEZES CORRE SOU BURRO
# No final da execucao do programa o valor armazenado na variavel "DD" e: 		0x0F
# O valor de retorno da cunção main() e: 						supostamente AA[0] ou seja #

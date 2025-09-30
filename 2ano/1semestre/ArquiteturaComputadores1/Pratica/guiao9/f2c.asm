#Função do EX2
#Mapa de registo:
# ft -> f12    - Os valores de entrada vêm sempre no f12 (args)
# para dar return manda-se o valor ao registo f0

  .data
 .eqv print_float, 2
 .eqv read_int, 5
k1:	.float	2.59375				# definicao da constante
k2:	.float 	0.0
cnt:	.double 5, 9, 32
 .text

f2c:								#double f2c (double ft)
	la		$t0, cnt
	l.d		$f0, 0($t0)				#ct1 = 5.0
	l.d		$f2, 8($t0)				#ct2 = 9.0
	l.d		$f4, 16($t0)			#ct3 = 32.0
	
	div.d	$f0, $f0, $f2			#ct1 = ct1 / ct2
	sub.d	$f2, $f12, $f4			#ct2 = (ft - 32)
	mul.d	$f0, $f0, $f2			#return (ct1 * ct2);
	jr		$ra

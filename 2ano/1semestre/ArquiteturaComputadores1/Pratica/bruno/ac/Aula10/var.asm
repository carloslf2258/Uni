#Mapa de registos
# array : $f12 -> $f20
# nval : $a0 -> $s0
# media : $f22
# soma : $f24
# i : $s2

var:				#double var(double *array, int nval) 
	jal avg
	mov.d $f22, $f0
	cvt.s.d $f22, $f22	#	media = (float)average(array, nval);
	
	
var_for:
	
	
	.include "xtoy.asm"
	.include "avg.asm"

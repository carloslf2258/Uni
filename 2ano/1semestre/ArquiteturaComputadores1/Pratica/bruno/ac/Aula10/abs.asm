abs:				#int abs(int val) {
abs_if:	bgez $a0, abs_endif	#	if(val < 0)
	sub $a0, $0, $a0	#		val = -val;
abs_endif:
	move $v0, $a0		#	return val;
	jr $ra			#}
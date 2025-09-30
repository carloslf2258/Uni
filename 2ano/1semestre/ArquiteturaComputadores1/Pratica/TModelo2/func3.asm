# Mapa de registos
# a: $f8
# t: $f6
# n: $t1
# oldg: $f0
# g: $f2
# s: $f4
# k: $t0
    	.data
oldg:   .float -1.0
g:  	.float 1.0
s:  	.float 0.0
    	.text
func3:                          #float func3 (float *a, float t, int n) {
    	addiu $sp, $sp, -4
    	sw $ra, 0($sp)
    
    	mov.s $f8, $f12		# *a = f8
    	mov.s $f6, $f14		# t = f6
    	move $t1, $a0		# n = t1

    	la $t0, oldg
    	l.s $f0, 0($t0)             #   float oldg = -1.0;

    	la $t0, g
    	l.s $f2, 0($t0)             #   float g = 1.0;

    	la $t0, s
    	l.s $f4, 0($t0)             #   float s = 0.0;

    	li $t0, 0					#k = 0
func3_for:
    	bge $t0, $t1, func3_endf    #   for(k = 0; k < n; k++) {
func3_while:
    	sub.s $f10, $f2, $f0    # g - oldg
    	c.le.s $f10, $f6
    	bc1t func3_endw   #       while ((g - oldg > t) {
    	mov.s $f0, $f2              #           oldg = g;

    	sll $t2, $t0, 2 # $t2 = k * sizeof float
    	mfc1 $t3, $f8 # $t3 = &a[0]
    	addu $t2, $t3, $t2 # $t2 = &a[k]
    	l.s $f10, 0($t2) # $f10 = a[k]

	add.s $f2, $f2, $f4         #           g = g + a[k]
    	div.s $f2, $f2, $f6         #           g = g / t;
    	j func3_while # loop
func3_endw:
    	add.s $f4, $f4, $f2         #       s = s + g;
    	
    	#sll $t2, $t0, 2
    	#mfc1 $t3, $f8 # $t3 = &a[0]
	#addu $t2, $t3, $t2 # $t2 = &a[k] MATA-ME
    	s.s $f2, 0($t2) #       a[k] = g;
    	addi $t0, $t0, 1            #       k++;
    	j func3_for                 #   }
func3_endf:
    	mtc1 $t1, $f10 # $f10 = n
    	cvt.s.w $f10, $f10
    	div.s $f0, $f4, $f10        #   return s / (float) n;

    	lw $ra, 0($sp)
    	addiu $sp, $sp, 4

    	jr $ra                      #}



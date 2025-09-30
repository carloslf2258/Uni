# typedef struct
# {                     Align   Size    Offset
#   int acc;                4      4         0
#   unsigned char nm;       1      1         4
#   double grade;           8	   8         5->8
#   char quest[14];         1	   14        16
#   int cq;                 4      4         30->32
# } t_kvd  				    8     36->40
# Mapa de registos
# nv: $t2
# pt: $t3
# i: $t0
# j: $t1
# sum: $f2
 .data
d0:	.float 0.0
 .eqv acc, 0
 .eqv nm, 4
 .eqv grade, 8
 .eqv quest, 16
 .eqv cq, 32
 .text
 .globl main
main:
 la		$t0, d0			
 l.d	$f2, 0($t0)		#double sum = 0.0;
 li		$t0, 0			#i = 0;
 move	$t2, $a0		#nv = t2
 move	$t3, $a1		#*pt = t3
for:
 bge	$t0, $t2, endfor
 li		$t1, 0    		#j = 0;
do:
 addu	$t4, $t3, quest	#pt->quest[0]
 addu	$t4, $t4, $t1	#pt->quest[j]
 mtc1	$t4, $f4		
 cvt.d.w $f4, $f4		#f4 =(double) quest[j]
 add.d	$f2, $f2, $f4	#sum += f4
 addiu	$t1, $t1, 1
while:
 addiu	$t5, $t3, nm	#t5 = pt->nm
 blt	$t1, $t5, do	#j < pt->nm
endwhile:
 addi	$t7, $t3, ...
 addiu	$t3, $t3, 40	#j++
 addiu	$t0, $t0, 1		#i++
 j		for
endfor:
 addi	$t6, $t3, grade	#t6 = pt->grade
 
 jr		$ra

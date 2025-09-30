#int main(void)
#{
#char c;
#int cnt = 0;
#do
#{
#c = getChar();
#putChar( c );
#cnt++;
#} while( c != '\n' );
#printInt(cnt, 10);
#return 0;
#}   
#VALORES:
#cnt -> t0 
	.eqv	GET_CHAR, 2
	.eqv	PUT_CHAR, 3
    .eqv    printInt10, 6

	.data
	.text
	.globl	main

main:	
    li  $t0, 0          #cnt = 0;
do:	
    li	$v0,GET_CHAR    
	syscall             #v0 = getChar
	move	$t1,$v0     #c = v0

	move $a0, $t1
	li	$v0,PUT_CHAR    
	syscall             #putChar( c );

	addiu	$t0,$t0,1
    bne	$t1,'\n', do
while:
    li	$v0, printInt10
    move   $a0, $t0
    li    $a1, 10
    syscall             #printInt(cnt, 10);
    li	$v0,0
	jr	$ra
// TO DO : desenvolva um algoritmo para verificar se um numero inteiro positivo
//         e uma capicua
//         Exemplos: 12321 e uma capiacua, mas 123456 nao e
//         USE uma PILHA DE INTEIROS (STACK) e uma FILA DE INTEIROS (QUEUE)
//
// TO DO : design an algorithm to check if the digits of a positive decimal
//         integer number constitue a palindrome
//         Examples: 12321 is a palindrome, but 123456 is not
//         USE a STACK of integers and a QUEUE of integers

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "IntegersQueue.h"
#include "IntegersStack.h"


#define MAX(a,b) (((a)>(b))?(a):(b)) 

size_t number_digits(int n) {
    size_t c = (n==0)?1:log10(n)+1;  
    return c;
}

int* digits(int n, size_t* nd) {
    *nd = number_digits(n);
    int* ds = (int*)calloc(*nd, sizeof(int)); 
    size_t i = (*nd)-1;
    
    while(n)
    {
        ds[i--] = n%10;
        n /= 10;
    }

    return ds;
}

int main(void) { 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0; 
}

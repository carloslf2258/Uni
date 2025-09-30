#include <stdio.h>

size_t number_digits(int n){
    int size = 0;
}


int* digits(int n, size_t* nd){
    *nd = number_digits(n);
    int* ds = (int*) calloc(*nd, sizeof(int));
    size_t i = (*nd) - 1;
    
    //Teste do i
    printf("%ld", i);

    while(n){
        ds[i--] = n%10;
        n/= 10;
    }
}


int factorion(int n){
    int fact[10];
    fact[0] = 1;
    fact[1] = 1;

    for(size_t i = 2; i < 10; i++){
        fact[i] = fact[i-1] * i;
    }
    //Imprimir Array
    for(size_t i = 0; i < 10; i++){
        printf("%d, ", fact[i]);
    }
    printf("\n");

}


int main(void) {





    return 0;

}
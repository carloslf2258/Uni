#include<stdio.h>
#include <assert.h>

size_t N_CALLS;

size_t recursive(size_t n){
    assert(n > 0);

    if (n == 1) {
        return 1;
    }

    // n é par
    if (n % 2 == 0) {
        N_CALLS++;
        return 2*recursive(n/2) + n;
    }
    N_CALLS += 2;
    // n é impar
    return n + recursive(n/2) + recursive((n+1)/2);

    
}


int main(void){



    return 0;
}
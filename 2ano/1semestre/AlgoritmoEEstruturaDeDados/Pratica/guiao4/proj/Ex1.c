#include <stdio.h>
#include <assert.h>

/* GLOBAL VARIABLE */
size_t NUM_COMPS;

void printArray(int* a, int n) {
    int i;

    printf("[ ");
    for (i = 0; i < n; i++) {
        if (i == n-1){
            printf("%4d ]", a[i]);
        } else {
        printf("%4d, ", a[i]);
        }
    }

    printf("\n");
}


int check(int* a, int n){
    int result = 0;
    /*if (n < 3)
        return -1;*/
    assert(n > 2);
    
    for(int i=1; i < n-1; i++){
        if ( a[i] == a[i-1] + a[i+1] ){
            result++;
        }
        NUM_COMPS++;
    }
    return result;
}

int main(void) {
    
    int r; //result

    int a1[10] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3};
    int a2[10] = {4, 5, 1, 3, 3, 3, 3, 3, 3, 3};
    int a3[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    int size = 10;

  printf(" *** TESTING ***\n");

  printArray(a1, size);

  NUM_COMPS = 0;

  r = check(a1, size);

  printf("Result = %d \t NUM_COMPS = %d \n\n", r, NUM_COMPS);

  printArray(a2, size);

  NUM_COMPS = 0;

  r = check(a2, size);

  printf("Result = %d \t NUM_COMPS = %d \n\n", r, NUM_COMPS);

  printArray(a3, size);

  NUM_COMPS = 0;

  r = check(a3, size);

  printf("Result = %d \t NUM_COMPS = %d \n\n", r, NUM_COMPS);

    return 0;

}
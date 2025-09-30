#include <stdio.h>

//Pra que serve o const char *s nos argumentos de printArray
//Por que o length é length_dpm = sizeof(days_per_month) / sizeof(days_per_month[0]);


//Criar função printArray
void printArray(const char *s, int a[], int length){
    printf("%s:\n", s);
    for (int i = 0; i < length; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");

}

//Criar função cumSum
void cumSum(int a[], int b[], int length){
    int c = 0;
    for (int i = 0; i < length; i++) {
        c += a[i];
        b[i] = c;
    }
    printf("\n");
}

int main() {
    int days_per_month[12] = {31,28,31,30,31,30,31,31,30,31,30,31};
    int length_dpm = sizeof(days_per_month) / sizeof(days_per_month[0]);

    printArray("a", days_per_month, length_dpm); 

    int array_b[12];
    cumSum(days_per_month, array_b, length_dpm);
    printArray("b", array_b, length_dpm);


    return 0;
}
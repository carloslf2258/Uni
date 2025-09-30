#include<stdio.h>
#include <stdlib.h>
#include<assert.h>

// Display the contents of array a with n elements
// Pre-Conditions: a != NULL and n > 0
// Example of produced output: Array = [ 1.00, 2.00, 3.00 ]

void DisplayArray(double* a, size_t n) { 
    if(a != NULL && n > 0 ){
        printf("Array = [ ");
        for (size_t i = 0; i < n; i++) {
            printf("%.2lf", a[i]); // %.2lf specifies two decimal places for a double
            if (i < n - 1) {
                printf(", "); // Add a comma and space for all elements except the last one
            }
    }
    printf(" ]\n");
    } else{
        printf("Invalid values to DisplayArray function!");
    }
}

// Read the number of elements, allocate the array and read its elements
// Condition: number of elements > 0
// Pre-Condition: size_p != NULL
// Return NULL if memory allocation fails
// Set *size_p to ZERO if memory allocation fails

double* ReadArray(size_t* size_p) {
    size_t numElements = *size_p;
    double* array;

    
    if (numElements <= 0 || size_p == NULL) {
        // Verifica se o número de elementos é válido
        printf("Invalid input for the number of elements.\n");
        numElements = 0; // Define size_p para zero
        return NULL; // Retorna NULL em caso de erro
    }

    // Aloca memória para o array de double
    array = (double*) calloc(numElements, sizeof(double));

    if (array == NULL) {
        printf("Memory allocation failed.\n");
        numElements = 0; // Define size_p para zero
        return NULL; // Retorna NULL em caso de falha na alocação de memória
    }

    // Lê os elementos do array
    printf("Enter the elements:\n");
    for (size_t i = 0; i < numElements; i++) {
        if (scanf("%lf", &array[i]) != 1) {
            // Verifica se a leitura do elemento foi bem-sucedida
            printf("Invalid input for element %zu.\n", i + 1);
            free(array); // Libera a memória alocada
            numElements = 0; // Define size_p para zero
            return NULL; // Retorna NULL em caso de erro
        }
    }

    return array; // Retorna o ponteiro para o array alocado dinamicamente
}


// Allocate and return a new array with (size_1 + size_2) elements
// which stores the elements of array_1 followed by the elements of array_2
// Pre-Conditions: array_1 != NULL and array_2 != NULL
// Pre-Conditions: size_1 > 0 and size_2 > 0
// Return NULL if memory allocation fails
double* Append(double* array_1, size_t size_1, double* array_2, size_t size_2){
    // Pré-condições
    if (array_1 == NULL || array_2 == NULL || size_1 <= 0 || size_2 <= 0) {
        return NULL;
    }

    // Aloque memória para o novo array
    double* result = (double*)calloc((size_1 + size_2), sizeof(double));

    if (result == NULL) {
        return NULL;
    }

    // Copie os elementos de array_1 para o novo array
    for (size_t i = 0; i < size_1; i++) {
        result[i] = array_1[i];
    }

    // Copie os elementos de array_2 para o novo array
    for (size_t i = 0; i < size_2; i++) {
        result[size_1 + i] = array_2[i];
    }

    return result; // Retorna o novo array alocado dinamicamente
}







int main(){
    double a1[] = {1.00, 2.00, 3.00, 4.00, 5.00, 6.00, 7.00};
    int a1_length = sizeof(a1) / sizeof(a1[0]);

    //double* a1_ptrs[a1_length];
    double* a1_ptrs = (double*) calloc(a1_length, sizeof(double));

    // Inicializa cada elemento do array de ponteiros com um endereço dos elementos em 'valores'
    for (int i = 0; i < a1_length; i++){
        a1_ptrs[i] = a1[i];
    }

    if (a1_ptrs == NULL) {
        printf("Falha na alocação de memória.\n");
        return 1; // Sai com código de erro
    }

    //Test of array1
    DisplayArray(a1, a1_length);


    //Test of Array2 and function ReadArray
    size_t a2_length = 0;
    size_t* a2_ptr = &a2_length;
    printf("Enter the length of the next Array: ");
    scanf("%zu", &a2_length);
    double* a2 = ReadArray(a2_ptr);

    DisplayArray(a2, a2_length);



    //Test of Append function
    size_t a3_length = 0;
    size_t* a3_ptr_length = &a3_length;
    printf("Enter the length of the third Array: ");
    scanf("%zu", &a3_length);

    double* a3 = ReadArray(a3_ptr_length);

    assert(a3 != NULL);
    /*if (a3 == NULL) {
        printf("Falha na alocacao de memoria de a3.\n");
        return 1;
    }*/

    double* appendedArray = Append(a2, a2_length, a3, a3_length);

    assert(a3 != NULL);
    /*if (appendedArray == NULL) {
        printf("Falha na alocacao de memoria de appendedArray.\n");
        return 1;
    }*/


    size_t appendedArray_length = *a2_ptr + *a3_ptr_length;
    DisplayArray(appendedArray, appendedArray_length);
    
    // Test example: Array = [ 1.00, 2.00, 3.00 ]
    // Array = [ 4.00, 5.00, 6.00, 7.00 ]
    // Array = [ 1.00, 2.00, 3.00, 4.00, 5.00, 6.00, 7.00 ]



    
    // Isto é o que faz a primeira função, dar print do array do tipo double* :
    /*
    // Acesse e imprima os valores usando os ponteiros no array de ponteiros
    printf("Array 1: \n [");
    for (int i = 0; i < a1_length; i++) {
        if(i >= a1_length - 1){
            printf("%.2lf]\n", *a1_ptrs[i]);
        } else{
            printf("%.2lf, ", *a1_ptrs[i]);
        }
    }
    */





    free(a1_ptrs);
    free(a2);
    free(a3);
    free(appendedArray);


    return 0;
}
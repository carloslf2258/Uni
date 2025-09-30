#include<stdio.h>
#include <math.h>


int main (){

    int linhas = 0;
    printf("Introduza o numero de linhas que a tabela vai ter: \n");
    scanf("%d", &linhas);

    // Verificar se o número é positivo
    if (linhas > 0) {
        double quadrado, raiz;
        printf("Numero | Quadrado | Raiz Quadrada\n");
        printf("---------------------------------\n");
        for (int i = 1; i <= linhas; i++) {
            quadrado = pow(i, 2); // Calcula o quadrado
            raiz = sqrt(i); // Calcula a raiz

            printf("%6d | %8.2lf | %8.2lf\n", i, quadrado, raiz);
           
            if (i == linhas){
                printf("---------------------------------\n");
            }
        }


    } else if (linhas == 0) {
        printf("\n");
    } else {
        printf("O numero inserido nao e valido.\n");
    }



    return 0;
}
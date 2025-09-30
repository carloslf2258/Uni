/*
PROGRAMA QUE MULTIPLICA DOIS NÚMEROS DADOS PELO UTULIZADOR
#include <stdio.h>

int main(){

    printf("Olá, introduz dois número para multiplicar \n");
    double n1;
    double n2;

    scanf("%lf %lf", &n1, &n2);

    printf("The result is: %lf \n", n1*n2);

} */

//UPDATE
#include <stdio.h>

int main() {
    printf("Ola, introduza dois numeros para multiplicar\n");
    double n1;
    double n2;

    if (scanf("%lf %lf", &n1, &n2) == 2) {
        double resultado = n1 * n2;
        printf("O resultado e: %lf\n", resultado);
    } else {
        printf("Entrada invalida. Certifique-se de ingresar dos numeros validos.\n");
    }

    return 0;
}

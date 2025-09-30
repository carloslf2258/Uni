#include<stdio.h>
#include <math.h>
//Tabela que mostra senos e cossenos entre dois angulos

//Ver por que não reconhece M_PI sem isto
#define M_PI 3.14159265358979323846

int main (){

    int ang1, ang2, jumps;
    printf("Introduza dois angulos: \n");
    scanf("%d %d", &ang1, &ang2);

    printf("Introduza o espaco que quer entre sucessivos valores intermedios: \n");
    scanf("%d", &jumps);


    FILE *file;
    file = fopen("tabela.txt", "w"); // Abrir para escritura

    if (file == NULL) {
        perror("Erro ao abrir o ficheiro");
        return 1;
    }
    
    double sin_value, cos_value;
    fprintf(file, "ang | sin(ang) | cos(ang)\n");
    fprintf(file, "--- ------------ -------------\n");

    for (int i = ang1; i <= ang2; i += jumps) {
        double ang_radian = i * M_PI / 180;
        cos_value = cos(ang_radian); // Calcula o cos/sen em radianes
        sin_value = sin(ang_radian);

        fprintf(file, "%3d | %8.2lf | %8.2lf\n", i, sin_value, cos_value);
           
        }
    fclose(file);

    printf("Tabela escrita em 'tabela.txt'.\n");

    return 0;
}
#include <stdio.h>

int main() {
    
    /*
    printf("Por favor, introduza o seu nome e apelido: \n");
    
    SCANF SEM SEPARAR O NOME E O APELIDO
    char cadena[100];
    //O scanf para quando se encontra um espaço em branco, pelo que depois não aparece o apelido
    //scanf("%s", cadena);

    //Lê tdo até encontrar um \n, pelo que lê os " " também
    scanf("%99[^\n]", cadena);

    printf("Hello %s! \n", cadena);
    */

   /*
    //SEPARANDO
    char first_name[21], last_name[21];
    printf("Por favor, introduza o seu nome: \n");
    
    scanf("%s", &first_name);
    printf("Por favor, introduza o seu apelido: \n");
    scanf("%s", &last_name);
    printf("Hello %s %s!", first_name, last_name);

    */

    char cadeia[100];
    
    printf("Por favor, introduz uma cadeia: ");
    fgets(cadeia, sizeof(cadeia), stdin); // Lê texto do teclado, para ler do terminal é stdout
    
    printf("A cadeia e: %s", cadeia);


    return 0;
}
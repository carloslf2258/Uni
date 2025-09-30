#include <stdio.h>
#include<stdlib.h>
#include <strings.h>

//Nº Caracteres da primeira string que são letras do alfabeto
int count_alpha(char* str) {
    size_t c = 0, i = 0;
    
    while(str[i] != '\0') {
        if((str[i]>='a' && str[i]<='z') || (str[i]>='A' && str[i]<='Z')) {
            c++;
        }
        
        i++;
    }

    return c;
}

//Nº Caracteres da segunda string que são letras maiúsculas
int count_upper(char* str){
    int c = 0;
    int length = strlen(str);

    for(int i=0; i<length ;i++){
        if (str[i] >= 'A' && str[i] <= 'Z') {
            c++;
        }
    }
    return c;

}

//Comparar strings
int to_compare(char* str1, char* str2){
    int result = strcmp(str1, str2);
    return result;

}

   


int main(void){
    char *str1, *str2;
    str1 = (char*) calloc(51, sizeof(char));
    str2 = (char*) calloc(51, sizeof(char));

    printf("Insert first string: ");
    scanf("%[^\n]%*c", str1);

    printf("Insert second string: ");
    scanf("%[^\n]%*c", str2);

    printf("%s\n%s\n", str1, str2);

    printf("Number of alphabets in '%s': %d\n", str1, count_alpha(str1));
    printf("Number of capital letters in '%s': %d\n", str2, count_upper(str2));

    char* str1_2 = strcat(str1, " ");
    printf("Strings to lower: %s\n", strlwr(strcat(str1_2, str2)));

    int resultado = to_compare(str1, str2);
    if (resultado == 0) {
        printf("As strings são iguais.\n");
    } else if (resultado < 0) {
        printf("str1 e menor do que str2.\n");
    } else {
        printf("str1 e maior do que str2.\n");
    }

    free(str1);
    free(str2);


   /*

    char general_string[100] = strcat(word1, word2);

    printf("Texto minusculo: %s\n", strlwr(general_string));*/




        
    //Copiar e colar a segunda string em si própria

        
    

    
    
  //  fgets(cadeia, sizeof(cadeia), stdin); // Lê texto do teclado, para ler do terminal é stdout
    
    
    
    
    
    return 0;
}
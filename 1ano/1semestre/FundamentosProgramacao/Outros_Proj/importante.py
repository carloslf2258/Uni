''' ================================================================================================== '''
# Como é que vejo numa string o número de letras das palavras utilizadas mas sem contar com os espaços e 
# palavra por palavra

# uma funcao que receba uma string com várias palavras (str)
def num_palavras(str):
    # str.split() separa as palavras da string por espaços brancos e cria uma lista com as mesmas
    # iterar pela lista de palavras já sem espaços
    for x in str.split():
        # verificar o tamanho da palavra (x)
        print(len(x))  #entendido

# chamar a funcao num_palavras
num_palavras('   ola   adeus   mundo ')


''' ================================================================================================== '''
# uma funcao que receba uma lista de clubes em strings (lst), e devolva uma lista dos jogos possiveis 
def allMatches(lst):
    # lista de jogos a devolver
    games = []

    # iterar pela lista de clubes
    for team1 in lst:
        # iterar pela lista de clubes outra vez
        for team2 in lst:
            # verificar se a equipa 1 é igual à equipa 2 (ex: FCP == FCP)
            # só ver os casos em que são equipas diferentes
            if team1 != team2:
                # adicionar à lista o tuplo (equipa1, equipa2)
                games.append((team1, team2))
    
    # devolver a lista de jogos
    return games #entendido

# chamar a funcao de allMatches
lst_jogos = allMatches(["FCP", "SCP", "SLB"])
# print do resultado
print(lst_jogos)


''' ================================================================================================== '''
# ver uma lista de palavras com espaços e ver o tamanho das mesmas (sem espaços)
def num_palavras_lst(lst):
    # iterar pela lista de strings
    for x in lst:
        # str é a palavra da lista sem espaços (strip)
        str = x.strip()
        print(len(str))

lst_str = ['   ola ', ' adeus ', 'mundo']
# chamar a função com a lista dada
num_palavras_lst(lst_str)


''' ================================================================================================== '''
# receber uma frase e remover as palavras cujo o tamanho não é número primo
def remove_prime_num(str):
    # string the output a ser devolvida
    str_out = ""

    # str.split() separa as palavras da string por espaços brancos e cria uma lista com as mesmas
    # iterar pela lista de palavras já sem espaços
    for x in str.split():
        # guardar o tamanho da palavras
        str_len = len(x)
        
        # verificar se o valor é número primo
        if isPrime(str_len):
            # concatenar a palavra (x) à string final (str_out) e adicionar um espaço branco
            # porque foi removido com o .split()
            str_out += x + ' '

    # devolver a string final
    return str_out

# verificar se um numero é primo
def isPrime(num):
    # ver se o numero é maior que 1
    if num > 1:
        # iterar por todos os numeros de 2 até a ele proprio (não inclusivo)
        for i in range(2, num):
            # verificar se é divisivel por esse numero
            if (num % i) == 0:
                # se for divisivel entao nao é primo
                return 0
    # se for 1, não é primo
    else:
        return 0
    
    # se até agora não deu 0, então é primo
    return 1

s = "Omicron Effect: Foreign Flights Won't Resume On Dec 15, Decision Later."
# chamar a funcao com a string s
remove_prime_num(s)


''' ================================================================================================== '''
# encontrar uma palavra (string_to_find) numa frase (str)
def fun(str, string_to_find):
    # str.split() separa as palavras da string por espaços brancos e cria uma lista com as mesmas
    # iterar pela lista de palavras já sem espaços
    for x in str.split():
        # verficiar se a palavra que estás à procura é igual a palavra que estás a iterar 
        if string_to_find == x:
            return 1
    # se ate este ponto não encontrar retornar 0
    return 0

# chamar a funcao
print(fun('a bc d', 'x'))


''' OUTRAS DÚVIDAS '''
'''
Q: Quando é que tenho que usar argumentos numa funcao?
A: Nunca. No entanto, uma função só faz o seu propósito quando é parametrizavel, ou seja,
    uma funcao nunca precisa de ter arugmentos, mas se não os tiver é o mesmo que ter código
    corrido fora de um funçõa. O objetivo é escrever código que seja generalizável e capaz
    de realizar as operações desejadas sobre os argumentos genéricos:

    Exemplo: Uma funcao que calcule uma fomula matemática
    def fun_matematica(a, b, c):
        return a**b + c * a
'''
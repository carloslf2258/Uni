#1- Ler o ficheiro
#2- organizar dados
#d = {'ALT': (nota, random number 1-4)}

#3- Pesquisa por chave. Se chave in dict --> (nota, 1-4)
#                       Se nao --> mensagem
#4- Actualização do valor corresp. à chave pesquisa --- sim ->(15, nº alet, 'xpyo')
#5- Escrita ficheiro output --> ALT:(15, 1-4, xpto)
import random
def work(fname):
    with open(fname, 'r') as file_prod:
        for lines in file_prod:
            l = lines.strip().split("\t")
            if l[0] != "Nome":
                l[0] = iniciais(l[0])   #Transformar os nomes nas suas iniciais
                dict[l[0]] = (l[1], random.randrange(1, 5))
    return dict

def iniciais(nome):
    nome = nome.strip().split()  #A string é separada em lista
    ini = ''
    for i in nome:  #Percorrer a lista e somar o 1 de cada elemento
        ini += i[0]
    return ini
def pesquisar(pesquisa):
    if pesquisa in dict:
        return dict[pesquisa]
    return "Essas iniciais não correspondem a nenhum estudante"

def alterarTuple(mudanca):
    mudar = input("Deseja fazer alguma alteração? (y/n ").upper()
    if mudar == "Y" or mudar == "YES" or mudar == "SIM":
        mudanca = input("O que deseja adicionar nas informações do seu educando? ")
        return dict[pesquisa].append(mudanca)
    return "Escolheu não adicionar informações sobre o seu educando"


dict = {}
print(work("P4.csv"))
pesquisa = input("Introduza as iniciais do seu educando: ").upper()
print(pesquisar(pesquisa))
print(alterarTuple())
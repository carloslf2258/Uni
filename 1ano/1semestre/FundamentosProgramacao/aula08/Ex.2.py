#1- Abrir o ficheiro
#2- Ler o ficheiro
#3- Processar linha a linha
#4- dict
#5- Preencher o dic[apelido] = set(primeiros nomes)
#6- Fazer return do dict

def names_ex2():
    dict = {}
    with open("names.txt", 'r', encoding="utf-8") as file:
        for line in file:
            names = line.strip().split()
            primeiro_nome = names[0]
            apelido = names[-1]
            if apelido not in dict:
                dict[apelido] = set()
            dict[apelido].add(primeiro_nome)
    return dict


print(names_ex2())


def iniciais(nome):
    nome = nome.strip().split()  #A string é separada em lista
    ini = ''
    for i in nome:  #Percorrer a lista e somar o 1 de cada elemento
        if i[0].isupper():
            ini += i[0]
    return ini






org = input("What's ur organization/group/whatever? ")
print(iniciais(org))
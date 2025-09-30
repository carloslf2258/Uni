# Complete o programa!


# a)
#lst_output[('3781', 'João', 19, 20 ,19), (aks, ckn, a)]
def loadFile(fname, lst):
    with open(fname, 'r', encoding='utf-8') as file:
        for lines in file:
            l = lines.split('\t')
            if l[0] != 'Numero':
                l[7].replace('\n', '')
                lst.append((int(l[0]), l[1], int(l[2]), l[3], l[4], float(l[5]), float(l[6]), float(l[7])))
        print(lst)
    return lst
# b) Crie a função notaFinal aqui...
def notaFinal(num_aluno, lst):
    for i in lst:
        if num_aluno in i:
            media = (i[5]+i[6]+i[7])/3
            return media
    return "Número inválido"




# c) Crie a função printPauta aqui...
def printPauta(lst):
    print("Número                     Nome                           Nota")
    for i in lst:
        print("{:<6} {:^50} {:.2f}".format(i[0], i[1], notaFinal(i[0], lst)))

  #      print("{:^50}".format(i[1]))


# d)
def main():
    lst = []
    # ler os ficheiros
    loadFile("school1.csv", lst)
#    loadFile("school2.csv", lst)
#    loadFile("school3.csv", lst)

    num_aluno = int(input("Insira o número de estudante do seu educando: "))
    print(notaFinal(num_aluno, lst))

    # ordenar a lista
    ...
    # mostrar a pauta
    printPauta(lst)


# Call main function
if __name__ == "__main__":
    main()



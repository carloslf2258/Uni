def readlst():
    print("Insert numbers after '>' (empty line to quit)")
    lst = []
    while True:
        line = input("> ")
        if line=="": break
        elif line.isdigit():
            lst.append(float(line))
        else:
            print("Introduzir únicamente números")
    return lst
lst = readlst()
print("LIST: ", lst)


def countLower(lst, v):                         #Conta quantos elementos de lst são inferiores a v
    count = 0             #Iniciar contador
    for i in lst:       #Percorrer lst
        if i < v:
            count += 1
    return count
v = float(input("Dentro da lista, quer saber quantos números são inferiores a um nº? Introduza esse número: "))
print("Quantidade de nº inferiores:", countLower(lst, v))

#Achar o mínimo e o máximo de lst. Sem usar as funções min e max.
def minmax(lst):
    max = lst[0]
    min = lst[0]
    for i in lst:
        if i >= max:
            max = i
        if i <= min:
            min = i
    return min, max

min, max = minmax(lst)

print("{:10.2f} é o mininmo da lista".format(min))
print("{:.2f} é o maximo da lista".format(max))

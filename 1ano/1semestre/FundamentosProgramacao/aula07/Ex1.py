#Este ex seria mais facil se a utilização dum dicionário

from collections import OrderedDict

def ReadFile():
    cont = {}
    with open("pg3333.txt", "r", encoding="utf-8") as f:
        for line in f:
            for c in line:
                c = c.lower()
                if c.isalpha() == True:
                    if c in cont:
                        cont[c] += 1
                    else:
                        cont[c] = 1
    ordenado = OrderedDict(sorted(cont.items(), reverse=True, key=lambda x: x[1]))

    return ordenado
print(ReadFile())
"""PROGRAMA PARA GERIR CAMPEONATO DE FUTEBOL"""

def guardar_equipas(lst):
    equipas = input("Insira o nome da primeira equipa: ").upper()
    while equipas != "":
        e = equipas.strip()
        lst.append(e)
        equipas = input("Insira a seguinte equipa (ENTER vazio para terminar)").upper()
    return lst





lst = []
print("Suas equipas são: {}".format(guardar_equipas(lst)))
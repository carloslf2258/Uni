# Complete este programa como pedido no guião da aula.


#Falta fazer o ex 3, implementar a morada e mudar a base de dados "contactos"
def listContacts(dic):
    """Print the contents of the dictionary as a table, one item per row."""
    print("{:>12s} : {}".format("Numero", "Nome"))
    for num in dic:
        print("{:>12s} : {}".format(num, dic[num]))

def adi_contact(contactos):
    nome = input("Introduza o nome do contacto: ")
    num = int(input("Introduza o número do contacto: "))
    morada = int(input("Introduza a morada do contacto: "))
    if nome not in contactos and num not in contactos:
        contactos[nome] = num
        print(f"Contacto adicinado: {contactos[nome]}--{nome}")
    else:
        print("Já criou um contacto com estas infos")

def tirar_contact(contactos):
    num = input("Introduza o numero do contacto que deseja retirar: ")
    if num in contactos: #or nome in contactos[nome]:
      #  clave = next(key for key, value in mi_diccionario.items() if value == "valor")
        contactos.pop(num)

def look_for(contactos):
    num = input("Introduza o numero do contacto que deseja procurar: ")
 #   if num in contactos:
#        print("Contacto: ", contactos[num])
#    else:
#        print(num)
    print(contactos.get(num, num))

def filterPartName(contactos, partName):
    """Returns a new dict with the contacts whose names contain partName."""
    #dict = {key for key, value in contactos if partName in value}
    dict = {}
    for num in contactos:
        if partName in contactos[num]:
            dict[num] = contactos[num]
    return dict

def menu():
    """Shows the menu and gets user option."""
    print()
    print("(L)istar contactos")
    print("(A)dicionar contacto")
    print("(R)emover contacto")
    print("Procurar (N)úmero")
    print("Procurar (P)arte do nome")
    print("(T)erminar")
    op = input("opção? ").upper()   # converts to uppercase...
    return op


def main():
    """This is the main function containing the main loop."""

    # The list of contacts (it's actually a dictionary!):
    contactos = {"234370200": "Universidade de Aveiro",
        "727392822": "Cristiano Aveiro",
        "387719992": "Maria Matos",
        "887555987": "Marta Maia",
        "876111333": "Carlos Martins",
        "433162999": "Ana Bacalhau"
        }

    op = ""
    while op != "T":
        op = menu()
        if op == "T":
            print("Fim")
        elif op == "L":
            print("Contactos:")
            listContacts(contactos)
        elif op == "A":
            adi_contact(contactos)
        elif op == "R":
            tirar_contact(contactos)
        elif op == "N":
            look_for(contactos)
        elif op == "P":
            partName = input("Introduza o nome do contacto: ")
            print(filterPartName(contactos, partName))
        else:
            print("Não implementado!")
    

# O programa começa aqui
main()


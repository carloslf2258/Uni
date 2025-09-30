#Ver se o numero de telefone é válido
def isPhoneNumber(s):
    if s[:1] == "+":
        s = s[1:]
    valid = s.isdigit() and len(s) >= 3
    return valid

#Pedir o número de telefone
def inputPhone(prompt):
    tel =""
    while not isPhoneNumber(tel):
        tel = input(prompt)
    return tel

#Ler ficheiro
def loadCalls(fname, calls):
    with open(fname) as f:
        for line in f:
            parts = line.split()
        #Poderíamos válidar percorrendo as linhas...
        call = (parts[0], parts[1], int(parts[2]))
        calls.append(call)

def callCost(call):
    ori, dst, dur = call
    if dst[0] == "2":
        rate = 0.02
    elif dst[0] == "+":
        rate = 0.80
    elif ori[:2] == dst[:2]:
        rate = 0.04
    else:
        rate = 0.10
    cost = dur / 60.0 * rate
    return cost

def invoice(calls, client):
    print("Fatura do cliente: ")
    print("{:<20} {:>7} {:>7}".format("Destino", "Duraçao", "Custo"))
    cost = 0.00
    total = 0.00
    for call in calls:
        ori, dst, dur = call
        if ori == client:
            cost += callCost(call)
            total += cost
            print("{:<20s} {:7d} {:6.2f}".format(dst, dur, cost))
    print("{:<20s} {:<7} {:6.2f}".format("", "Total:", total))
    return

MENU="""1) Registar chamada
2) Ler ficheiro
3) Listar clientes
4) Fatura
5) Terminar
Opção? """

def main():
    terminar = False
    calls = []
    while not terminar:
        op = input(MENU)
        if op == "1":
            telori = inputPhone("Tele origem? ")
            teldst = inputPhone("Telefone destino? ")
            dur = int(input("Duraçao (min)? "))
            call = (telori, teldst, dur)
            calls.append(call)
        elif op=="2":
            fname = input("Ficheiro? ")
            loadCalls(fname, calls)
        elif op=="3":
            clients = {ori for ori, dst, dur in calls}
            lst = sorted(clients)
            print("Clientes:", end=" ")
            for i in lst:
                print(i, end="  ")
            print()
        elif op=="4":
            client = input("Clientes? ")

            invoice(calls, client)
        elif op=="5":
            terminar=True
        else:
            print("Opção Inválida!")

if __name__ == "__main__":
    main()
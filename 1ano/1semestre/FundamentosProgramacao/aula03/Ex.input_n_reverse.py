#PROGRAMA: input = 34758 e output = 85743 (devolver o numero com digitos ao contrario)
n = int(input("Insira o número: "))
reverse = 0
if n < 0:
    print("Numero não válido")
else:
    while n > 0:
        resto = n%10
        reverse = reverse*10 + resto
        n = n//10
        print("n:", n)
        print("reverse:", reverse)
print(reverse)
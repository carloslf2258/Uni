combust = float(input("Qual é a quantidade de combustível?"))
p = 1.40*combust
if combust > 40:
    p = p-(p * 0.10)
print("O preço seria:", p)
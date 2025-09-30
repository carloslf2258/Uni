n = int(input("Insira n, início da contagem decrescente: "))
def countdown(n):
    #if n <= 0:
        #print("O valor deve ser positivo")
    #else:
        while n > 0:
            print(n)
            n -= 1

print(countdown(n))
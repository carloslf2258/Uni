import math

n = int(input("Introduza o número de termos: "))
p = int(input("Introduza o primeiro termo no somatório: "))
s = 0
a = 0
b = 0
for i in range(0, n):
    t = p*10**i
    a += t
    b += a

print(s)





#RESOLUÇÃO DO PEDRO
#aux = 0
#next_term = 0
#while aux < n:
    #nex_term = p + next_term*10
   # s += next_term
   # aux += 1
#print(s)
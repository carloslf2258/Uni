
# This program generates 20 terms of a sequence by a recurrence relation.
Un = 100                    # Un = each term of the sequence. Initially = U0
for n in range(20,0):
    print(Un)
    Un = 1.01*Un - 1.01     # Set Un to the next term of the sequence
#cont = 0
#while Un > 0:
#    print("Termo nº={} e Un={}".format(cont, Un))
#    Un = 1.01 * Un - 1.01
#    print(cont)
#    cont += 1

    'Outra forma (ficar com forma de tabela linda)'
#cont = 0
#print("{:^2s} {:2s}".format("Termo nº","Valor de Un"))
#while Un > 0:
#    print("{:.0f} {:.4f}".format(cont, Un))
#    Un = 1.01 * Un - 1.01
#    cont += 1
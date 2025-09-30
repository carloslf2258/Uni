#INPUT: w3rEsOUrcE
#OUTPUT: [6]

#INPUT: AEIOUYW
#OUTPUT: [0, 2, 4]

#1-Pedir a palvavra que vamos analisar
word = input("Insire uma palavra ou serie de carateres: ")

#2-Criar lista de vogais
lst = ["A", "E", "I", "O", "U"]
lst2 = []
#3-Percorrer a palavra: Se o indice for par e o carater for igual a um elemento da lista, devolver o indice do carater

#for w in range(len(word)):
#    if w % 2 == 0:
#        for i in range(len(lst)):  # tenho de percorrer a lista pra ver se a letra en word corresponde a algum elemento da lista
#            if lst[i] == word[w]:
#                lst2.append(w)

#print(lst2)

#OU:
#for w in range(len(word)):
    #if w % 2 == 0 and word[w] in lst:
#       lst2.append(w)


#OU (Ruben):
word2 = word[::2]
for w in word2:
    if w in lst:
        lst2.append(word.index(w))
print(lst2)

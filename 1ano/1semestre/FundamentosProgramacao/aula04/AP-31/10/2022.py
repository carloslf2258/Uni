#O utlizador deve introduzir uma lista qlqr como: input=['teste', 'xpto', 'abba', '123', '12321', 'a1tz']
                                                #output=['False', 'False', 'True', 'False', 'True', 'False']
#1- ler lista
#2- se a string tiver apenas dígitos
#SIM: calculate_reverse(n)
#NÃO: calculate_reverse_string(s)


#LER LISTA:
def readlst():
    print("Insert numbers after '>' (empty line to quit)")
    lst = []
    while True:
        line = input("> ")
        if line=="": break
        lst.append(line)
    return lst

lst = readlst()

lst2=[]
#Ver se o elemento contém só dígitos:
reverse = 0
for l in lst:
    l2 = l[::-1]
    lst2.append(l2)


print("lst:", lst)
print("lst2:", lst2)



#for l in lst:
#    if l.isdigit():         #Só se o elemento tiver só dígitos
 #       l = float(l)        #Passa esse elemento pra número
 #       while l > 0:
  #          resto = l % 10
  #          reverse = reverse * 10 + resto
  #          l = l // 10             #Este bloco todo passa um nº como 123 pra 321
  #          print(l)
  #          print("r:", reverse)
  #      lst2.append(reverse)
  #      print(l)   #Também pra ver resultados
  #      print(lst)
  #  else:
  #      l2 = l[::-1]
  #      lst2.append(l2)

#FUNÇÕES:
#calculate_reverse_int--> Ex.input_n_reverse
#calculate_reverse_string--> exemplos slides TP
#check_all_digits(s)--> countDigits

#for elem in l.input:
  #  if check_all_digits(s):
   #     calculate_reverse_int(int(s))
    #else:
     #   calculate_reverse_string(s)

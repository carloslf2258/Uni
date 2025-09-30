# Complete the code to make the HiLo game...

import random

def main():
    # Pick a random number between 1 and 100, inclusive
    secret = random.randrange(1, 101)
    print("Can you guess my secret?")
    # put your code here
    x = int(input("x?"))
    if x < 1 or x > 100:
        print("My secret is between 1 and 100")  #Para quando sai do domínio
    else:
        while x != secret:         #Se for diferente do secret:
            if x > secret:
                print("High")
                x = int(input("x?"))        #Perguntar outra vez cada vez
            else:                           #que é comparado o X com o secret
                print("Low")
                x = int(input("x?"))    #Quando o código sai do while quer dizer que x=secret
        print("U win")

            #OU (DENTRO DO WHILE): 'if x == secret:
                                      #print("U win")'

main()

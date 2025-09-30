def max_div(a, b):
    while b != 0:
        r = a%b
        a = b
        b = r
        print(b)
    return a

    #OU:
 #   while a != b:
 #       if a < b:
 #           b = b - a
 #       else:
 #           a = a - b
 #   return a



a = int(input("a? "))
b = int(input("b? "))
print("O maximo divisor comum é: ", max_div(a, b))
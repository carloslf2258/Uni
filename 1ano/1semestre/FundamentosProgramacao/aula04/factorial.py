def factorial(n):
   assert isinstance(n, int), "n should be an int"
   assert n >= 0            , "n should not be negative"
   # Complete aqui
   f = 1
   while n > 0:
      f *= n
      n -= 1

       #Ou:
     #  for i in range(1, n+1):
     #     f = f*i
   return f

x = int(input("Introduza o x: "))
print("O factorial de x e: ", factorial(x))
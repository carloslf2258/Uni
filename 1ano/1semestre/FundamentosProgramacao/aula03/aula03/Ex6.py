x = float(input("x? "))
y = float(input("y? "))
def max2(x, y):
    if x < y:
        m = y
    else:
        m = x
    return m


print("Entre esses 2: ", max2(x,y))







z = float(input("z?"))

def max3(x, y, z):
    f = max2(max2(x,y),z)

    'OU '
    'if z < max2(x, y):'
    'f = max2(x, y)'
    'else:'
    'f = z'
    'return f'




    return f

print("Entre esses 3: ", max3(x,y,z))
r = float(input("Introduza o r: "))

def tax(r):
    if r <= 1000:
        r *= 0.1
    elif r <= 2000:
        r = 0.2*r - 100
    else:
        r = 0.3*r - 300
    return r
print("O seu r é: ", tax(r))
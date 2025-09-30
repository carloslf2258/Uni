
# Generates all length-3 words with symbols taken from the given alphabet.
def genWords3(symbols, n):
    l = []
    if n == 1:
        for x in symbols:
            l.append(x)
        return l
    anterior = genWords3(symbols, n-1)
    for x in anterior:
        for y in symbols:
            l.append(x+y)
    return l

  #  return [ x+y+z for x in symbols for y in symbols for z in symbols ]

'FUNÇÃO DE PROVA:'
'''def genWords3_2(s):
    lst = []
    for x in s:
        for y in s:
            for z in s:
                r = x+y+z
                lst.append(r)
    return lst
a = input("a de função prova gen3_2? ")
print(genWords3_2(a)) '''


# Generates all length-n words with symbols taken from the given alphabet.
def genWords(symbols, n):
    ...


def main():
    a = input("a? ")
    n = int(input("n? "))
    print(genWords3(a, n))

    ''' lstA = genWords3("abc")
    print(lstA)
    
    lstB = genWords("abc", 3)  # should return the same words, maybe in other order
    print(lstB)
    assert sorted(lstA) == sorted(lstB)
    
    lstC = genWords("01", 4)  # should return all length-4 binary words
    print(lstC) '''


if __name__ == "__main__":
    main()


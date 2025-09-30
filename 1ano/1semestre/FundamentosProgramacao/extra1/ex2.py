"""
Imagine que está a fazer palavras cruzadas (em Inglês) e falta-lhe uma
palavra com o padrão "?YS???Y", onde os "?" representam letras por preencher.
Complete este programa para o ajudar a descobrir a palavra.
O programa já inclui instruções para ler uma lista de palavras inglesas a
partir do ficheiro wordlist.txt.
"""


# This function reads words from a file.
def load(fname):
    with open(fname) as f:
        lst = []
        for line in f:
            words = line.strip().split()
            lst.extend(words)
    return lst


""" a)
Complete a função matchesPattern(s, pattern) para devolver
True se s corresponder ao padrão fornecido e False, no caso contrário.
Uma string s corresponde ao padrão se e só se tiver os mesmos carateres
que o padrão nas mesmas posições, exceto onde o padrão tem ?.
Nas posições dos ?, não importa que carateres estão na string s.
A correspondência não deve fazer distinção entre maiúsculas e minúsculas.
"""


def matchesPattern(s, pattern):
    # Complete ...
    if len(s) != len(pattern):
        return False
    for i in range(len(s)):
        if (s[i].lower() != pattern[i].lower()) and (pattern[i] != "?"):
            return False
    return True


""" b)
Complete a função filterPattern(lst, pattern) para extrair duma lista de strings
as strings que têm o padrão dado.
Sugestão: use a função matchesPattern para testar cada palavra.
"""

def filterPattern(lst, pattern):
    matches = []
    for i in lst:
        if matchesPattern(i, pattern):
            matches.append(i)
    return matches


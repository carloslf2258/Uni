def score(guess: str, secret: str):
    assert len(guess) == len(secret)
    pontuation: tuple = (0, 0)
    for i in range(len(guess)):
        letter = guess[i]
        if letter in secret:
            if secret[i] == letter:
                pontuation = (pontuation[0] + 1, pontuation[1])
            else:
                pontuation = (pontuation[0], pontuation[1] + 1)
    return pontuation

print(score('1234','4271'))


'''MINHA VERSAO
assert len(guess) == len(secret)
    pts = (0, 0)
    for i in range(len(guess)):
        if guess[i] in secret:
            if guess[i] == secret[i]:
                pts = (pts[0]+1, pts[1])
            else:
                pts = (pts[0], pts[1]+1)
    return pts'''
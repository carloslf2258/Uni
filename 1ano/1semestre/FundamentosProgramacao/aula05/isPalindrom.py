def ispalindrome(word):
    word_reverse = word[::-1]
    if word == word_reverse:
        return True
    return False

print(ispalindrome("sometemos"))
print(ispalindrome("Hola"))
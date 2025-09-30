# isLeapYear(year) deve devolver True se year é um ano bissexto
# e False se é um ano comum.  Corrija-a.
# (See: https://en.wikipedia.org/wiki/Leap_year)
def isLeapYear(year):
    return (year % 4 == 0 and year % 100 != 0) or year % 400 == 0


# monthDays deve devolver o número de dias de um dado mês num dado ano.
# Por exemplo, monthDays(2004, 2) deve devolver 29.
# Corrija-a.
def monthDays(year, month):
    MONTHDAYS = (0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
    days = MONTHDAYS[month]

    if isLeapYear(year) == True and month == 2:
        days = 29

    return days


# nextDay deve devolver o dia a seguir a uma dada data.
# Por exemplo, nextDay(2017, 1, 31) deve devolver (2017, 2, 1)
def nextDay(year, month, day):
    if month == 2:
        if isLeapYear(year) == True:
            if day == 29:
                day = 1
                month += 1
            else:
                day += 1
        elif isLeapYear(year) == False:
            if day == 28:
                day = 1
                month += 1
            else:
                day += 1
    elif monthDays(year, month) % 2 == 0:
        if day < 30:
            day += 1
        elif day == 30:
            month += 1
            day = 1
    elif day < 31:
        day += 1
    elif day == 31:
        if month == 12:
            year += 1
            month = 1
            day = 1
        else:
            month += 1
            day = 1
    return year, month, day


# Defina uma função dateIsValid que deve
# devolver True se os seus argumentos formarem uma data válida
# e devolver False no caso contrário.
# Por exemplo, dateIsValid(1980, 2, 29) deve devolver True,
# dateIsValid(1980, 2, 30) deve devolver False.
def dateIsValid(year, month, day):
    if 0 <= year and 0 < month <= 12:
        if month == 2:
            if isLeapYear(year) == True:
                if 0 < day <= 29:
                    return True
                else:
                    return False
            elif 0 < day <= 28:
                return True
            else:
                return False
        elif monthDays(year, month) % 2 == 0:
            if 0 < day <= 30:
                return True
            else:
                return False
        elif 0 < day <= 31:
            return True
        else:
            return False
    else:
        return False

# Defina uma função previousDay que devolva o dia anterior a uma dada data.
# Por exemplo, previousDay(1980, 3, 1) deve devolver (1980, 2, 29)
def previousDay(year, month, day):
    if month == 3:
        if isLeapYear(year) == True:
            if day == 1:
                day = 29
                month -= 1
            else:
                day -= 1
        elif isLeapYear(year) == False:
            if day == 1:
                day = 28
                month -= 1
            else:
                day -= 1
    elif monthDays(year, month) % 2 == 0:
        if day == 1:
            month -= 1
            day = 31
        elif day > 1:
            day -= 1
    elif day == 1:
        if month == 1:
            year -= 1
            month = 12
            day = 31
        else:
            if monthDays(year, month - 1) == 30:
                day = 30
            else:
                day = 31
    else:
        day -= 1

    return year, month, day

# No Codecheck, não chame nenhuma função: o sistema trata disso.
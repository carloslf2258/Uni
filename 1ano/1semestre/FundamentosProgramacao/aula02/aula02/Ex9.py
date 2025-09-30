CTP = float(input("Qual a nota da componente CTP? "))
CP = float(input("Qual a nota da componente CP? "))

'Cálculo da nota final:'
nf = int(0.30 * CTP + 0.70 * CP)
'comparações:'
if (CTP < 0 or CTP > 20) or (CP < 0 or CP > 20):
    print("A nota deve estar entre 0 e 20!")
else:
    if CTP < 6.5 or CP < 6.5:
        nf = "código 66"
    else:
        if nf < 10:
            ATPR = float(input("Nota do recurso ATPR?"))
            APR = float(input("Nota do recurso APR?"))
            if CTP < ATPR:
                CTP = ATPR
                if CP < APR:
                    CP = APR
                    nf = int(0.30 * CTP + 0.70 * CP)


print("A nota final é: ", nf)


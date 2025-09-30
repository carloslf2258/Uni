# Pode correr o programa sem argumentos:
#   python3 shop
# ou passando outros ficheiros de produtos como argumento:
#   python3 shop produtos1.txt ...

def loadDataBase(fname, produtos):
    """Lê dados do ficheiro fname e atualiza/acrescenta a informação num
    dicionário de produtos com o formato {código: (nome, secção, preço, iva), ...}.
    """
    with open(fname, "r", encoding="utf-8") as file_prod:
        for line in file_prod:
            l = line.strip().split(";")   #Transforma a linha numa lista
            if l[0] != 'CODIGO':   #Nao me interessa adicionar a linha que contém as primeiras palavras no dicionário
                l[4] = l[4].replace('\n','')   #Isto é pra tirar "\n" e "%" da percentagem
                l[4] = l[4].replace('%', '')
                l[4] = float(l[4])/100       #Passar os números ao valor que corresponde a percentagem
                produtos[l[0]] = ((l[1], l[2], float(l[3]), l[4]))
    return produtos



def registaCompra(produtos):
    """Lê códigos de produtos (ou códigos e quantidades),
    mostra nome, quantidade e preço final de cada um,
    e devolve dicionário com {codigo: quantidade, ...}
    """
    dict = {}
    code = input("Code? ")
    while code != "":
        if code in produtos:  # Busca no dicionário o nome, 1 unidade e o peso bruto + peso bruto vezes a TAXA
            print("{}   {}  {:.2f}".format(produtos[code][0], 1,
                                           produtos[code][2] + produtos[code][2] * produtos[code][3]))
            dict[code] = dict.get(code, 0) + 1
            print(dict)  # Para verificar só
        else:
            pass
        code = input("Code? ")
    return dict

def fatura(produtos, compra):
    """Imprime a fatura de uma dada compra."""
    print(compra)
    bruto = 0
    liquido = 0
    for i in compra:
        iva = int(produtos[i][3]*100)
        preco_total = float((produtos[i][2] + produtos[i][2] * produtos[i][3])*compra[i])
        bruto += (produtos[i][2]*compra[i])
        liquido += preco_total
        print(produtos[i][1])
        print("{} {} {:>17s}     {:.2f}".format(compra[i], produtos[i][0], str(iva)+'%', preco_total))
    total_iva = liquido - bruto
    print("          {:>20}     {:.2f}".format("Total Bruto:", bruto))
    print("          {:>20}     {:.2f}".format("Total IVA:", total_iva))
    print("          {:>20}     {:.2f}".format("Total Liquido:", liquido))






def main(args):
    # produtos guarda a informação da base de dados numa forma conveniente.
    produtos = {'p1': ('Ketchup.', 'Mercearia Salgado', 1.59, 0.23)}
    # Carregar base de dados principal
    loadDataBase("produtos.txt", produtos)
    # Juntar bases de dados opcionais (Não altere)
    for arg in args:
        loadDataBase(arg, produtos)
    
    
    # Use este código para mostrar o menu e ler a opção repetidamente
    MENU = "(C)ompra (F)atura (S)air ? "
    repetir = True
    while repetir:
        # Utilizador introduz a opção com uma letra minúscula ou maiúscula
        op = input(MENU).upper()
        # Processar opção
        if op == "C":
            # Esta opção regista os produtos de uma compra
            compra = registaCompra(produtos)
            # Aqui pode acrescentar a compra a uma estrutura de dados adequada...
        if op == "F":
            fatural = fatura(produtos, compra)
        if op == "S": break
    print("Obrigado!")


# Não altere este código / Do not change this code
import sys
if __name__ == "__main__":
    main(sys.argv[1:])


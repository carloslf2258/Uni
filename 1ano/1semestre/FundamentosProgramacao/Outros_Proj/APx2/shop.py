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
        lst = code.split()  #Caso seja mais do que uma unidade
        if len(lst) == 1 and code in produtos:   #Se só é introduzido o código, é uma unidade do produto
            #Neste caso não é necessário recorrer à lista lst, podemos só trabalho com o código
            print("{}   {}  {:.2f}".format(produtos[code][0], 1,
                                                     produtos[code][2] + produtos[code][2] * produtos[code][3]))
            dict[code] = dict.get(code, 0) + 1
        elif lst[0] in produtos:
            #Se o utilizador introduziu quantidade, então a variavel quantidade passa a ser esse valor que corresponde à lst[1]
            quantidade = int(lst[1])
            print("{}   {}  {:.2f}".format(produtos[lst[0]][0], quantidade,  #O preço do produto é multiplicado pela quantidade do mesmo
                                           (produtos[lst[0]][2] + produtos[lst[0]][2] * produtos[lst[0]][3])*quantidade))
            dict[lst[0]] = dict.get(lst[0], 0) + quantidade
        code = input("Code? ")
    return dict

def fatura(produtos, compras):
    """Imprime a fatura de uma dada compra."""
    #Caso o utilizador introduza algo inválido, o programa voltará a pergunta o nº de compra e não dar erro
    while True:
#Está sempre a repetir este input até o utilizador introduzir um valor válido
        nrCompra = input("Numero compra? ")
        if nrCompra.isdigit() == True:
            if int(nrCompra)<=len(compras):
                break
        else:
            pass
#Para trabalhar com o número precisamos do número, pq embora o que saiu do while esteja nas condiçoes, continua a ser uma string
    nrCompra = int(nrCompra)

    bruto = 0
    liquido = 0
    compra = compras[nrCompra-1]       #Seleciona a compra a faturar
    produtos_comprados = {key:produtos[key] for key in compra} #Seleciona os produtos do dicionario cuja chave se encontra na compra
    for key, value in sorted(produtos_comprados.items(), key=lambda e: e[1][1]): #Ordena o dicionario alfabeticamente com base na secção dos produtos
        produtos_comprados[key] = value
    ultimaSeccao = ''   #Variavel que guarda a ultima seccao printada
    for i in produtos_comprados:
        iva = int(produtos_comprados[i][3]*100)
        preco_total = float((produtos_comprados[i][2] + produtos_comprados[i][2] * produtos_comprados[i][3])*compra[i])
        bruto += (produtos_comprados[i][2]*compra[i])
        liquido += preco_total

        seccao = produtos_comprados[i][1]
        if ultimaSeccao != seccao:        #Só dá print quando a secção altual é diferente da última uma vez que o dicionário está ordenado alfabeticamente
            ultimaSeccao = seccao           #Atualiza a ultima secção que deu print 
            print(seccao)
        if iva < 10:   #Para o espaço a esquerda do 6% como aparece no enunciado
            print("  {} {:<17s} {:>8s}     {:.2f}".format(compra[i], produtos_comprados[i][0], '( ' + str(iva)+'%)', preco_total))
        else:
            print("  {} {:<17s} {:>8s}     {:.2f}".format(compra[i], produtos_comprados[i][0], '(' + str(iva) + '%)',
                                                          preco_total))
    total_iva = liquido - bruto
    print("          {:>20}     {:.2f}".format("Total Bruto:", bruto))
    print("          {:>20}     {:.2f}".format("Total IVA:", total_iva))
    print("          {:>20}     {:.2f}".format("Total Liquido:", liquido))



def main(args):
    # produtos guarda a informação da base de dados numa forma conveniente.
    produtos = {}
    
    compras =  [] #Lista que guarda cada compra para o caso de o utilizador realizar mais que uma compra
  
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
            compras.append(compra)  #Acrescenta a compra na lista
        if op == "F":
            fatural = fatura(produtos, compras)
        if op == "S": break
    print("Obrigado!")


# Não altere este código / Do not change this code
import sys
if __name__ == "__main__":
    main(sys.argv[1:])

altura = int(input("altura: "))
largura = int(input("largura: "))
linha = ""
for i in range(altura):
    for j in range (largura):
        if(i == 0 or i == altura-1):
            if(j == 0 or j == largura-1):
                linha = linha + "+"
            else:
                linha = linha + "-"
        else:
            if(j == 0 or j == largura-1):
                linha = linha + "|"
            else:
                linha = linha + " "
    print(linha)
    linha = ""

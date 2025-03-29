import os 
import sys 

script_directory = os.path.dirname(os.path.abspath(sys.argv[0])) 
state = input("Informe o Estado: ")
ano = input("Informe o ano: ")
fires = 0
filepath = script_directory +"/data/amazon.csv"
f = open(filepath, "r")
if f:
    # ler o arquivo linha por linha
    for linha in f:
        linha = linha.replace('"', '')
        colunas = linha.split(',')
        if(colunas[0] == ano and colunas[1] == state ):
            fires += int(colunas[3])

    # fechar o arquivo
    f.close()
else:
    print("O arquivo de dados ainda não existe, nenhum dado foi lido")

print("Em",ano,"aconteceram",fires,"incendios em",state)
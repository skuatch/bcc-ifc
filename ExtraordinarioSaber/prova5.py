import os 
import sys 

def bubbleSort(array):
    size = len(array)
    while True:
        didntChange = True
        for i in range(size-1):
            if array[i] > array[i+1]:
                didntChange = False  
                tempItem = array[i]
                array[i] = array[i+1]
                array[i+1] = tempItem
        size -= 1
        if didntChange:
            break  
    return int(array[(len(array)-1)])

def sortString(array):
    biggestStr = ""
    for current in array:
        if(len(current) > len(biggestStr)):
            biggestStr = current
    array = sorted(array)
    return biggestStr


script_directory = os.path.dirname(os.path.abspath(sys.argv[0]))
fires = 0
filepath = script_directory +"/prova5Dados.csv"
numeros = []
strings = []

f = open(filepath, "r")
if f:
    # ler o arquivo linha por linha
    for linha in f:
        linha = linha.replace('\n', ' ').replace('\r', '').replace("'","")
        if linha.replace(" ","").isnumeric():
            numeros.append(int(linha.replace(" ","")))
        else:
            strings.append(linha)
    f.close()
maior = bubbleSort(numeros)
longa = sortString(strings)
for i in numeros:
    print(i)
for j in strings:
    print(j)
print(maior)
print(longa)
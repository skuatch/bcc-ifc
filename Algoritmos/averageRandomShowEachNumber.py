import random
iterationSize = random.randint(1,30)
print("Quantidade de iterações:", iterationSize)
soma = 0
for i in range(iterationSize):
   currentInput = random.randint(0,10)
   print("Input atual na posição",(i+1),":", currentInput)
   soma += currentInput
   print("Soma atual:",soma," Iteração atual:",(i+1))
   print("A média total é",(soma/(i+1)))
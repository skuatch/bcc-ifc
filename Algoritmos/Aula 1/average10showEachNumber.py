soma = 0
for i in range(3):
   soma += int(input("Informe o numero na posição " +str(i+1)+": "))
   print("A média total é",(soma/(i+1)))
   
import math

a = int(input())
b = int(input())
c = int(input())
delta = math.sqrt(math.pow(b,2)-(4*a*c))
result1 = (-b-delta)/(2*a)
result2 = (-b+delta)/(2*a)
print("solução da equação: x =", result1,"ou x =", result2)
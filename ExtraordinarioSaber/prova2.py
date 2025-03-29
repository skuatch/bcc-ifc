import random
for x in range(3,10,2):
    y = random.randint(1,10)
    if y == 5:
        print("PAROU")
        break
    print(x)
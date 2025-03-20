import sys
import random

"""
                   Selection Sorting Algorithm
1. Gets the array size
2. Iterates over each item recursively to change items positions
    a. First compares all items to the first:
        if the second item is bigger than the first, we'll switch their positions
        if the third is bigger than the first, we'll switch their positions
        and so on....
    b. does the same for each and every item on the list
3. returns the sorted list (also changes its order, I was just too lazy to switch the code)
4. The time complexity of this algorithm is O(n*n!)

"""



def selectionSort(array): 
    size = len(array)
    for i in range(size):
        for j in range(i+1,size):
            if array[i] > array[j]:
               tempItem = array[j]
               array[j] = array[i]
               array[i] = tempItem
    return array

"""
            Bubble Sorting
1. Gets the size of the array
2. While the array has changes, repeat the process
3. Compare the current index to the next, if the next is smaller, switch their positions
4. Check if we changed the order
4. Reduce the size that we will seek, because we found the last item
"""
def bubbleSort(array):
    size = len(array)
    didntChange = True
    while(didntChange):
        for i in range(size-1):
            if array[i] > array[i+1]:
                    didntChange = False
                    tempItem = array[i+1]
                    array[i+1] = array[i+1]
                    array[i+1] = tempItem
        size-=1
    return array
                   

"""
                    Algorithm for quicksorting
Source: https://stackoverflow.com/questions/18262306/quicksort-with-python

Explanation (by me):

1.If the input array has at least two elements sort it, otherwise return the array as it is already sorted.
2.Choose the first element of the array as the pivot element.
3.Create two empty lists, lesser and greater.
4.For each element in the array except for the pivot:
    a. If the element is lesser than the pivot, add it to the lesser list.
    b. If the element is greater than or equal to the pivot, add it to the greater list.
5.Recursively call sort on the lesser and greater lists.
6.Concatenate the sorted lesser list, the pivot element, and the sorted greater list.
7.Return the concatenated list.
"""

def quickSort(array):
    less = []
    equal = []
    greater = []

    if len(array) > 1:
        pivot = int(array[0])
        for x in array:
            if int(x) > int(pivot):
                less.append(int(x))
            elif int(x) == int(pivot):
                equal.append(int(x))
            elif int(x) > int(pivot):
                greater.append(int(x))
        return quickSort(less)+equal+quickSort(greater) 
    else: 
        return array


#In here we define our max value for both negative and positive numbers
ourMaxValue = 10*pow(10,7)

#### Code execution

inputSize = int(input('Qual a quantidade de numeros a ser comparada: '))
array = []

for i in range(inputSize):
    if(inputSize <= 10):
        item = int(input('Informe o numero na posição '+ str(i+1) +': '))
    else:
        item = random.randint(-ourMaxValue, ourMaxValue)
    array.append(item)

bubbleSort(array)

print('Lista Ordenada: ',end='')
for i in range(0,inputSize-2):
    print(array[i],end=', ')
print(array[inputSize-1])
print('\nO menor numero é:',array[0],'O maior numero é:',array[inputSize-1])



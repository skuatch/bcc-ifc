#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <stdbool.h>

int main()
{
}
void selectionSort(int array[], int arraySize)
{
    for (int i = 0; i < arraySize; i++)
    {
        for (int j = 0; j < arraySize; j++)
        {
            if (array[i] < array[j])
            {
                swap(array[i], array[j]);
            }
        }
    }
}

void bubbleSort(int array[], int arraySize){

    bool hadChanges = false;
    do
    {
        for (int i = 0; i < arraySize-1; i++){
            if(array[i] > array[i+1])
            {
                swap(array[i], array[i++]);
            }
        }
        arraySize--;
    } while (hadChanges);
}

// def quickSort(array):
//     less = []
//     equal = []
//     greater = []

//     if len(array) > 1:
//         pivot = int(array[0])
//         for x in array:
//             if int(x) < int(pivot):
//                 less.append(int(x))                      FIQUEI COM PREGUIÇA
//             elif int(x) == int(pivot):                      DE CONTINUAR
//                 equal.append(int(x))
//             else:
//                 greater.append(int(x))
//         return quickSort(less)+equal+quickSort(greater) 
//     else: 
//         return array

void quickSort(int array[])
{
    int arraySize = sizeof(array) / sizeof(array[0]);
    int smaller[arraySize];
    int equal[arraySize];
    int bigger[arraySize];
    int pivotItem = array[0];
    for (int i = 1; i < arraySize; i++)
    {
        if(array[i] == 0){
            break;
        }
        else{        
            if(array[i] < pivotItem){
                addAtLastPosition(smaller, array[i]);
            } else if(array[i] > pivotItem){
                addAtLastPosition(bigger, array[i]);
            } else{
                addAtLastPosition(equal, array[i]);
            }
        }
        quickSort(smaller);
        quickSort(bigger);
    }
    
}

void swap(int* a, int* b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void addAtLastPosition(int array[], int value){
    int arraySize = sizeof(array) / sizeof(array[0]);
    for (int i = 0; i < arraySize; i++)
    {
        if(array[i] == 0)
        {
            array[i] = value;
        }
    }
}
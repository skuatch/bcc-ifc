#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

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
                int temp = array[i];
                array[i] = array[j];
                array[i] = temp;
            }
        }
    }
}
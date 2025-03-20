#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int sum = 0;
    srand(time(NULL));
    
    for (int i = 1; i <= 10; i++)
    {
        int input = rand() % 10;
        printf("The number on the position %d is:%d\n", i, input);
        sum += input;
        printf("The current average for %d numbers is :%d\n", i, sum/i);
    };
}
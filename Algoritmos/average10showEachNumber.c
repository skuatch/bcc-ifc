#include <stdio.h>

int main()
{
    int soma = 0;
    for (int i = 1; i <= 10; i++)
    {
        int input;
        printf("Please input the number on the position %d: ", i);
        scanf("%d", &input);
        soma += input;
    };
    printf("The average of the numbers is :%d", soma/10);
}
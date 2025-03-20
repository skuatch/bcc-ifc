#include <stdio.h>

int main()
{
    int soma = 0;
    for (int i = 1; i <= 10; i++)
    {
        int input;
        printf("Informe o numero na posicao %d: ", i);
        scanf("%d", &input);
        soma += input;
    };
    printf("A media dos numeros eh :%d", soma/10);
}
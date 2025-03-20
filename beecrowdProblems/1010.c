#include <stdio.h>
 
// In this problem, the task is to read a code of a product 1, the number of units of product 1, the price for one unit of product 1, the code of a product 2, the number of units of product 2 and the price for one unit of product 2. After this, calculate and show the amount to be paid.

// Input
// The input file contains two lines of data. In each line there will be 3 values: two integers and a floating value with 2 digits after the decimal point.

// Output
// The output file must be a message like the following example where "Valor a pagar" means Value to Pay. Remember the space after ":" and after "R$" symbol. The value must be presented with 2 digits after the point.
int main() {
    
    int codigo1, quantidade1, codigo2, quantidade2;
    float valor1,valor2;

    scanf("%d %d %f", &codigo1, &quantidade1 , &valor1);
    scanf("%d %d %f", &codigo2, &quantidade2 , &valor2);
    
    printf("VALOR A PAGAR: R$ %.2lf\n",  (quantidade1*valor1) + (quantidade2*valor2));
    
    return 0;
}
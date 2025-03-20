#include <stdio.h>
 

int main() {
 
//Read four integer values named A, B, C and D. 
//Calculate and print the difference of product A and B by the product of C and D (A * B - C * D).
// Input:
// The input file contains 4 integer values.
// Output:
// Print DIFERENCA (DIFFERENCE in Portuguese) with all the capital letters, 
// according to the following example, with a blank space before and after the equal signal.
    int a;
    int b;
    int c;
    int d;

    scanf("%d", &a);
    scanf("%d", &b);
    scanf("%d", &c);
    scanf("%d", &d);

    printf("DIFERENCA = %d\n", (a*b)-(c*d));
    
    return 0;
}
#include <stdio.h>
#include <math.h>

// Make a program that reads three floating point values: A, B and C. Then, calculate and show:
// a) the area of the rectangled triangle that has base A and height C.
// b) the area of the radius's circle C. (pi = 3.14159)
// c) the area of the trapezium which has A and B by base, and C by height.
// d) the area of ​​the square that has side B.
// e) the area of the rectangle that has sides A and B.

// Input
// The input file contains three double values with one digit after the decimal point.

// Output
// The output file must contain 5 lines of data. Each line corresponds to one of the areas described above, always with a corresponding message (in Portuguese) and one space between the two points and the value. The value calculated must be presented with 3 digits after the decimal point.
int main() {
    
    double a,b,c;
    double pi = 3.14159;
    scanf("%f %f %f", &a, &b , &c);

    printf("TRIANGULO: %.3f\n", (a*c)/2);
    printf("CIRCULO: %.3f\n", pi*pow(c,2));
    printf("TRAPEZIO: %.3f\n", ((a+b)/2)*c);
    printf("QUADRADO: %.3f\n", pow(b,2));
    printf("RETANGULO: %.3f\n", a*b);

    return 0;
}
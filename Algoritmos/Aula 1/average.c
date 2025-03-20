#include <stdio.h>
 
int main() {
    
    float primeiro;
    float segundo;
    
    scanf("%f", &primeiro);   
    scanf("%f", &segundo);
    printf("MEDIA = %.5f\n", ((primeiro*3.5)+(segundo*7.5))/11);   
    return 0;
}
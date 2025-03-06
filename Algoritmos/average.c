#include <stdio.h>

int main()
{

  int primeiro;
  int segundo;
  int media;
    
  printf("Informe o primeiro numero: ");
  scanf("%d", &primeiro);   
  
  
  printf("Informe o segundo numero: ");
  scanf("%d", &segundo);
  
  media = descobrirMedia(primeiro, segundo);
  
  
  printf("A média de %d e %d é: %d", primeiro, segundo, media);
}

int descobrirMedia(int a, int b){
    int somaLocal = a + b;
    int mediaLocal = somaLocal/2;
    return mediaLocal;
}
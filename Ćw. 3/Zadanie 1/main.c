#include "zeros.h"

int main()
{
    float a, b, c;
    
    printf("Podaj wspolczynniki a, b i c: ");
    scanf("%f %f %f", &a, &b, &c);
    
    zeros(a, b, c);
    
    return 0;
}
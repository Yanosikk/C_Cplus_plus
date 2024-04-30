#include <stdio.h>
#include <math.h>
#include "zeros.h"

void zeros(float a, float b, float c)
{
    float delta = b * b - 4 * a * c;  // obliczenie delty
    float x1, x2;  // deklaracja zmiennych na miejsca zerowe
    
    if (delta < 0)  // brak miejsc zerowych dla delty ujemnej
    {
        printf("Brak miejsc zerowych.\n");
    }
    else if (delta == 0)  // jedno miejsce zerowe dla delty równej zero
    {
        x1 = -b / (2 * a);
        printf("Miejsce zerowe: x = %f\n", x1);
    }
    else  // dwa miejsca zerowe dla delty dodatniej
    {
        x1 = (-b - sqrt(delta)) / (2 * a);
        x2 = (-b + sqrt(delta)) / (2 * a);
        printf("Miejsca zerowe: x1 = %f, x2 = %f\n", x1, x2);
    }
}

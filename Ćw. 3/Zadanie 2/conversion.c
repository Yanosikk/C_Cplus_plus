#include <stdio.h>
#include "conversion.h"

void decimalToBinary(unsigned int number)
{
    int binary[32]; // Tablica, w której przechowujemy bity liczby binarnej
    int i = 0;

    // Konwertujemy liczbę dziesiętną na binarną, zapisując bity w odwróconej kolejności
    while (number > 0) {
        binary[i] = number % 2;
        number /= 2;
        i++;
    }

    // Wyświetlamy liczbę binarną na konsoli
    printf("Liczba binarna: ");
    for (int j = i - 1; j >= 0; j--)
        printf("%d", binary[j]);
    printf("\n");
}

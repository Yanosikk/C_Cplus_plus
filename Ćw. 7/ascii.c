#include <stdio.h>
#include <stdlib.h>

#define MAX_INPUT 20 // maksymalna liczba wprowadzonych znaków

int main() {
    char input[MAX_INPUT]; // tablica przechowująca wprowadzone znaki
    char c; // zmienna do przechowywania kolejnego wprowadzonego znaku
    int i = 0; // licznik wprowadzonych znaków
    
    // otwarcie pliku tekstowego input.txt do zapisu
    FILE* fp = fopen("input.txt", "w");
    if (fp == NULL) {
        printf("Nie udało się otworzyć pliku.\n");
        return 1;
    }
    
    // wprowadzanie znaków z klawiatury do wystąpienia litery 'q' lub 'Q'
    printf("Wprowadź znaki ASCII: ");
    while (i < MAX_INPUT && (c = getchar()) != 'q' && c != 'Q') {
        input[i++] = c;
    }
    
    // dodanie znaku '\0' na końcu wprowadzonej tablicy
    input[i] = '\0';
    
    // zapisanie wprowadzonych znaków do pliku i zamknięcie pliku
    // fprintf(fp, "%s", input);
    fwrite(input, sizeof(char), i, fp);
    fclose(fp);
    
    printf("Zapisano %d znaków w pliku input.txt.\n", i);
    
    return 0;
}






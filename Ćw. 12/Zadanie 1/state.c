#include <stdio.h>
#include <stdlib.h>

void echo(char c) {
    printf("ECHO: %c\n", c);
}

void write(char c) {
    printf("WRITE: %c\n", c);
    
    FILE *file = fopen("output.txt", "a");  // Otwórz plik "output.txt" w trybie dopisywania
    if (file == NULL) {
        printf("Błąd otwarcia pliku.\n");
        exit(1);
    }

    fprintf(file, "%c", c);
    fclose(file);
}
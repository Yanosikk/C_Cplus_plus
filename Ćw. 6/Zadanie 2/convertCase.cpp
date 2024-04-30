#include "convertCase.h"
#include <ctype.h>

void convertCase(char text[]) {
    int i = 0;
    while (text[i] != '\0') {
        if (isalpha(text[i])) { // sprawdzenie, czy znak jest literą
            if (isupper(text[i])) { // sprawdzenie, czy litera jest duża
                text[i] = tolower(text[i]); // zamiana na małą literę
            } else { // litera jest mała
                text[i] = toupper(text[i]); // zamiana na dużą literę
            }
        }
        i++;
    }
}

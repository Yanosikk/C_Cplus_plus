#include "statemachine.h"
#include "reader.h"
#include "state.h"
#include<stdio.h>

void exec() {
    char state = 'E';  // Stan początkowy: ECHO
    char c;

    while (1) { //while(1) po to aby petla wykonywala sie w nieskonczonosc do komendy return albo break
        c = readChar();

        switch (state) {
            case 'E':
                if (c == 'w') {
                    state = 'W';
                    printf("Przejście z ECHO do WRITE\n");
                } else if (c == 'q') {
                    printf("Zakończenie programu\n");
                    return;
                } else {
                    echo(c);
                }
                break;
                
            case 'W':
                if (c == 'e') {
                    state = 'E';
                    printf("Przejście z WRITE do ECHO\n");
                } else if (c == 'q') {
                    printf("Zakończenie programu\n");
                    return;
                } else {
                    write(c);
                }
                break;
        }
    }
}
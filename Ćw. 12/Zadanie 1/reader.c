#include <stdio.h>

#include "reader.h"

char readChar() {
	char character;
	while ((character = getchar()) == '\n' || character == EOF) //To cos sluzy do tego aby pominac znak nowej linii oraz znak konca pliku "EOF"  
	return character;
}

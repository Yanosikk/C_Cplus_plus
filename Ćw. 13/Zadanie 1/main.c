#include <stdio.h>
#include <stdlib.h>
#include "math_utils.h"

int main() {
    int x, y;
    
    printf("Podaj dwie liczby calkowite: ");
    int result = scanf("%d %d", &x, &y);
	
	if(result != 2) {
		printf("Bledne dane wejsciowe, oczekiwane sa dwie liczby");
		return 0;
	}
	
	if(x < 0 || y < 0){
		printf("Nie obsluguje liczb ujemnych");
		return 0;
	}
    
    int nwd = gcd(x, y);
    int nww = lcm(x, y);
    
    printf("NWD: %d\n", nwd);
    printf("NWW: %d\n", nww);
    
    return 0;
}
#include "tabUtils.h"
#include <cstdlib>
#include <ctime>
#include <iostream>

int main() {
    // ustawienie ziarna generatora liczb pseudolosowych
    srand(time(NULL));

    // utworzenie i zainicjowanie tablicy
    const unsigned int size = 15;
    int tab[size];
    for(unsigned int i = 0; i < size; i++) {
        tab[i] = rand() % 100; // liczby z zakresu [0, 99]
    }

    // wyświetlenie zawartości tablicy przed odwróceniem kolejności
    std::cout << "Tablica przed odwróceniem:" << std::endl;
    printTab(tab, size);

    // odwrócenie kolejności elementów w tablicy
    reverseTab(tab, size);

    // wyświetlenie zawartości tablicy po odwróceniu kolejności
    std::cout << "Tablica po odwróceniu:" << std::endl;
    printTab(tab, size);

    return 0;
}

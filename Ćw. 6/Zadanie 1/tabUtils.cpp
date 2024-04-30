#include "tabUtils.h"
#include <iostream>

void printTab(const int * const tab, unsigned int size) {
    for(unsigned int i = 0; i < size; i++) {
        std::cout << tab[i] << " ";
    }
    std::cout << std::endl;
}

void reverseTab(int * const tab, unsigned int size) {
    for(unsigned int i = 0; i < size/2; i++) {
        int temp = tab[i];
        tab[i] = tab[size-1-i];
        tab[size-1-i] = temp;
    }
}

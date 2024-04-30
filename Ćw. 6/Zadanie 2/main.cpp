#include <iostream>
#include "convertCase.h"
using namespace std;

int main() {
    const int SIZE = 20;
    char text[SIZE];
    cout << "Podaj " << SIZE << " znakow: ";
    for (int i = 0; i < SIZE; i++) {
        cin >> text[i];
    }
    convertCase(text);
    cout << "Wynik: ";
    for (int i = 0; i < SIZE; i++) {
        cout << text[i];
    }
    cout << endl;
    return 0;
}

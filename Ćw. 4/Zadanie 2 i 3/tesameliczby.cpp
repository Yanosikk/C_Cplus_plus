#include <iostream>
#include <stdexcept>
#include "calculator.h"

using namespace std;

int main() {
    float x, y, result;
    Operation operation;
    bool sameNumbers = false; // zmienna flagowa
    cout << "Type two numbers." << endl << "x: ";
    cin >> x;
    cout << endl << "y: ";
    cin >> y;
    while (!sameNumbers) { // pętla działa tak długo, aż sameNumbers nie zostanie zmienione na true
        cout << endl << "Choose arithmetic operation to be performed:" << std::endl
            << "0 - addition" << endl
            << "1 - subtraction" << endl
            << "2 - multiplication" << endl
            << "3 - division" << endl;
        unsigned int op;
        cin >> op;
        operation = static_cast<Operation>(op);
        result = calculate(operation, x, y);
        std::cout << "Operation result equals: " << result << std::endl;
        float new_x, new_y;
        cout << "Type next two numbers." << endl << "x: ";
        cin >> new_x;
        cout << endl << "y: ";
        cin >> new_y;
        if (new_x == x && new_y == y) {
            sameNumbers = true; // jeśli nowe liczby są takie same jak poprzednie, to zmieniamy wartość zmiennej flagowej na true
            cout << "You entered the same numbers twice in a row. Exiting..." << endl;
        }
        else {
            x = new_x;
            y = new_y;
        }
    }
    return EXIT_SUCCESS;
}
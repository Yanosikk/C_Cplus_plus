#include <iostream>
#include <stdexcept>
#include "calculator.h"

using namespace std;

void quitWithError() {
    cout << "Invalid operation performed" << endl;
    exit(EXIT_SUCCESS);
}

float add(float a, float b) {
    return a + b;
}

float subtract(float a, float b) {
    return a - b;
}

float multiply(float a, float b) {
    return a * b;
}

float divide(float a, float b) {
    if (b == 0) {
        cout << "Error: Division by zero" << endl;
        exit(EXIT_SUCCESS);
    }
    return a / b;
}

float calculate(int operation, float a, float b) {
    switch (operation) {
        case 0:
            return add(a, b);
        case 1:
            return subtract(a, b);
        case 2:
            return multiply(a, b);
        case 3:
            return divide(a, b);
        default:
            quitWithError();
            return 0;
    }
}

void calculator() {
    float a, b;
    int operation;

    cout << "Enter first number: ";
    cin >> a;

    cout << "Enter second number: ";
    cin >> b;

    cout << "Enter operation (0 = Addition, 1 = Subtraction, 2 = Multiplication, 3 = Division): ";
    cin >> operation;

    float result = calculate(operation, a, b);

    cout << "Result: " << result << endl;
}

int main() {
    calculator();
    return 0;
}
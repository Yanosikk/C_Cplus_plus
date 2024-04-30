#include "gcd.h"

int iterGcd(int a, int b) {
    int temp;
    while (b != 0) {
        temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

int recurGcd(int a, int b) {
    if (b == 0) {
        return a;
    } else {
        return recurGcd(b, a % b);
    }
}
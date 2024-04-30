#include <iostream>
#include "gcd.h"

int main() {
    int a = 48;
    int b = 60;
    std::cout << "iterGcd(" << a << ", " << b << ") = " << iterGcd(a, b) << std::endl;
    std::cout << "recurGcd(" << a << ", " << b << ") = " << recurGcd(a, b) << std::endl;
    return 0;
}
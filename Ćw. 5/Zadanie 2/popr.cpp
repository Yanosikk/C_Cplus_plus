int fibonacci(unsigned int n) {
    if (n <= 1)
        return n;

    int a = 0;
    int b = 1;
    int c;

    for (unsigned int i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }

    return b;
}
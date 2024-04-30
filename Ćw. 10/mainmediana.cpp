#include <iostream>
#include <algorithm> 

using namespace std;

bool mediana(const int* tab, unsigned int n, float* buffer) {
    if (n == 0) {
        return false;
    }
    int* sorttab = new int[n]; 
    copy(tab, tab + n, sorttab); 
    sort(sorttab, sorttab + n); 
    float mediana;
    if (n % 2 == 0) { 
        mediana = static_cast<float>(sorttab[n/2-1] + sorttab[n/2])/2.0; 
    } else { 
        mediana = static_cast<float>(sorttab[n/2]); 
    }
    delete[] sorttab; 
    *buffer = mediana; 
    return true;
}

int main() {
    unsigned int n;
    cout << "Podaj ilosc elementow oczekiwanych do wyliczenia mediany: ";
    cin >> n;
    int* tab = new int[n]; 
    cout << "Podaj " << n << " liczby: ";
    for (unsigned int i = 0; i < n; ++i) {
        cin >> tab[i];
    }
    float medianawartosc;
    if (mediana(tab, n, &medianawartosc)) {
        cout << "Wartosc mediany: " << medianawartosc << endl;
    } else {
        cout << "Nie udalo sie obliczyc mediany" << endl;
    }
    delete[] tab; 
    return 0;
}
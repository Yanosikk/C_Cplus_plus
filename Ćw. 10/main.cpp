#include <iostream>
#include <algorithm> // potrzebne do użycia funkcji sort

using namespace std;

bool mediana(const int* tab, unsigned int n, float* buffer) {
    if (n == 0) {
        return false;
    }
    int* sorttab = new int[n]; // tworzenie nowej tablicy na posortowane wartości, używamy wskaźnika po to aby dynamicznie zaalokowac a rozmiar moze byc zbyt duzy by umiescic na stosie
    copy(tab, tab + n, sorttab); // kopiowanie wartości z tablicy tab do tablicy sortedTab, gdzie tab to poczatek sekwencji źródłowej a tab+n to koniec
    sort(sorttab, sorttab + n); // sortowanie tablicy
    float mediana;
    if (n % 2 == 0) { // medianą jest średnia dwóch wartości środkowych
        mediana = static_cast<float>(sorttab[n/2-1] + sorttab[n/2])/2.0; // tutaj jest konwersja typu static_cast<float> aby uniknąć problemu z dzieleniem liczb całkowitych
    } else { // Medianą jest wartość środkowa
        mediana = static_cast<float>(sorttab[n/2]); // n/2 dlatego że środkowa wartość tablicy
    }
    delete[] sorttab; //musimy zwolnić pamięc by nie wyciekła
    *buffer = mediana; // zapisanie mediany do bufora 
    return true;
}

int main() {
    unsigned int n;
    cout << "Podaj ilosc elementow oczekiwanych do wyliczenia mediany: ";
    cin >> n;
    int* tab = new int[n]; // tworzenie nowej tablicy na elementy wczytane z klawiatury
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
    delete[] tab; // zwolnienie pamięci
    return 0;
}
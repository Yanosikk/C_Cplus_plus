#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main() {
    string filename;
    char letter;
    int count = 0;

    cout << "Podaj nazwe pliku: ";
    cin >> filename;

    cout << "Podaj litere: ";
    cin >> letter;

    ifstream file(filename);
    if (!file.is_open()) {
        cout << "Nie udalo sie otworzyc pliku.\n";
        return 1;
    }

    char c;
    while (file.get(c)) {
        if (c == letter) {
            count++;
        }
    }

    cout << "Litera '" << letter << "' wystepuje w pliku " << filename << " " << count << " razy.\n";

    file.close();
    return 0;
}
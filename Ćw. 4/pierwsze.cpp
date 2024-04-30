#include <iostream>
#include <iomanip>

using namespace std;

int main() {

  int num1 = 255;
  double num2 = 3.14159;

  // 1. wyświetl liczbę w reprezentacji szesnastkowej, łącznie z bazą (0x)
  cout << "Liczba num1 w reprezentacji szesnastkowej: 0x" << hex << num1 << endl;

  // 2. ustaw szerokość pola, a wyświetlaną wartość liczbową poprzedź dopełniającymi zerami
  cout << "Liczba num1 z zerami do szerokości 6: " << setfill('0') << setw(6) << num1 << endl;

  // 3. wyświetl liczbę zmiennoprzecinkową z określoną precyzją
  cout << "Liczba num2 z precyzją 3: " << fixed << setprecision(3) << num2 << endl;

  return 0;
}
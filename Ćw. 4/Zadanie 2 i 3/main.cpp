#include <iostream>
#include "calculator.h"

using namespace std; 

int main() {
	float x, y, result;
	Operation operation;
	cout << "Type two numbers." << endl << "x: ";
	cin >> x;
	cout << endl << "y: ";
	cin >> y;
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
	return EXIT_SUCCESS;
}
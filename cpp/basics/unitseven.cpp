#include <iostream>

void evenOrOdd(int number) {
    switch(number % 2)
    {
        case 0:
            std::cout << "verified: even";
            return;
        default:
            std::cout << "verified: odd";
            return;
    }
}

int main() {
start:
    std::cout << "Please enter/another a number: ";
    int magicNumber;
    std::cin >> magicNumber;

    if (magicNumber < 0)
        std::cout << "Your number is negative!" << '\n';
    else if (magicNumber == 0) {
        std::cout << "Your number is netural!" << '\n';
        goto start;
    }
    else
        std::cout << "Your number is positive!" << '\n';

    evenOrOdd(magicNumber);

    return 0;
}

#include <iostream>

int main()
{
    // declare variables
    int a, b;
    double c;
    int controlled;
    int userInputNumOne;
    int userInputNumTwo;
    int userInputNumThree;

    // initialize variables
    a = 0;
    b = 1;
    c = 2.1;

    // ask for user input and return chosen tuple
    std::cout << "Please enter three numbers: ";
    std::cin >> userInputNumOne >> userInputNumTwo >> userInputNumThree;
    std::cout << "(" << userInputNumOne << "," << userInputNumTwo << "," <<
        userInputNumThree << ")" << '\n';

    // print out variables
    std::cout << "Size of double: " << sizeof(c) <<std::endl;
    std::cout << "Size of int: " << sizeof(a) <<std::endl;
    std::cout << (2 * 2) - 5 << std::endl;
    std::cout << a << std::endl;
    std::cout << b << std::endl;
    std::cout << c << std::endl;
    std::cout << "controlled: " << controlled << '\n';
    std::cout << __cplusplus << std::endl;
    std::cout << "This is the final result!";
    return 0;
}

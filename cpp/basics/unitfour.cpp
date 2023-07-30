#include <iostream>
#include <string>
// #include <unitfive.cpp>

void intToDouble (int doubleNum) {
    std::cout << doubleNum << '\n';
}

void stringInput(std::string str) {
    std::string resultString{};
    std::getline(std::cin >> std::ws, resultString);
    std::cout << resultString << " and " << str << '\n';
}

int main() {
    unsigned short a = 66535;
    a = 66536;
    int b = 1;
    int c = b++;
    std::cout << b << c << '\n';
    std::cout << a << '\n';
    std::cout << 11 / 5 << '\n';
    intToDouble(5.6575757);
    std::cout << static_cast<int>(45.543633463) << '\n';
    stringInput("I am 5 years old.");
    return 0;
}

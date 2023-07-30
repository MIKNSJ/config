#include <iostream>

int main() {
    int x = 10000;
    std::cout << &x << '\n';
    int *ptr = &x;
    std::cout << *(&x) << '\n';
    std::cout << ptr << '\n';
    std::cout << *ptr << '\n';
    std::cout << &ptr;
    ptr = &x;
    std::cout << &ptr;
}

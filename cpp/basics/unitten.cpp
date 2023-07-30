#include <iostream>
#include <string>

enum Mobility {
    foot,
    boat,
    plane,
};

struct AimLockEngine {
    std::string target;
    int pcent;
    int health;
    int armor;
    int ammo;
};


int main() {
    Mobility john = foot;
    if (john == foot) {
        std::cout << "enumerator successfully established" << '\n';
        std::cout << "The mobility of john is: " << john << '\n';
    }
    else
        std::cout << "enumerator was not established";

    AimLockEngine user = {"head", 75, 1000000, 1000001, 1000002};
    std::cout << user.target << '\n';
    std::cout << user.pcent << '\n';
    std::cout << user.health << '\n';
    std::cout << user.armor << '\n';
    std::cout << user.ammo << '\n';
    return 0;
}

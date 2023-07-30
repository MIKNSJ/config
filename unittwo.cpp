#include <iostream>

// marketplace
void shipItem() {
    std::cout << "Your item has been shipped!" << '\n';
}

void receiptItem() {
    std::cout << "An online statement has been emailed regarding your purchase." << '\n';
    shipItem();
}

void buyItem() {
    std::cout << "You have bought an item from your cart." << '\n';
    receiptItem();
}

// exam curves
int curveExamScores(int rawScores) {
    int curvedScores = rawScores * 1.2;
    return curvedScores;
}

// main function
int main() {
    buyItem();
    int myScore = curveExamScores(65);
    std::cout << myScore;
    return 0;
}

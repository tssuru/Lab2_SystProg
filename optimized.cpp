#include <iostream>

using namespace std;

bool isPalindrome(int num) {
    if (num < 0 || (num % 10 == 0 && num != 0))
        return false;

    int reversed = 0;
    
    while (num > reversed) {
        int digit = num % 10;
        reversed = reversed * 10 + digit;
        num /= 10;
    }

    return num == reversed || num == reversed / 10;
}

int main() {
    for (int i = 0; i < 1000; i++) {
        isPalindrome(i * 1234);    
    }

    return 0;
}

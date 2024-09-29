#include <iostream>

using namespace std;

bool isPalindrome(int num)
{
    int original = num;
    int reversed = 0;

    while (num > 0)
    {
        int digit = num % 10;
        reversed = reversed * 10 + digit;
        num /= 10;
    }

    return original == reversed;
}

int main()
{
    for (int i = 0; i < 1000; i++)
    {
        isPalindrome(i * 1234);
    }

    return 0;
}

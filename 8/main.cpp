#include <iostream>

extern "C" int integerMulDiv(int a, int b, int* prod, int *quo, int* rem);

int main()
{
    int a = 5;
    int b = 2;
    int prod, quo, rem;

    const int res = integerMulDiv(a, b, &prod, &quo, &rem);
    if (res)
        std::cout << prod << " " << quo << " " << rem << std::endl;
    else
        std::cout << "error" << std::endl;
    return 0;
}
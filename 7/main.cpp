#include <iostream>

extern "C" int adder(int a, int b, int c);

int main()
{
    std::cout << adder(1,2,3) << std::endl;

    return 0;
}
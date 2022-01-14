#include <iostream>

extern "C" double FtoC(double f);
extern "C" double CtoF(double c);

int main()
{
    std::cout << FtoC(86) << std::endl;
    std::cout << CtoF(30) << std::endl;
    return 0;
}

#include <iostream>

extern "C" void reverser(int* y, int* x, int n);

int main()
{
    const int n = 3;
    int x[n], y[n];
    x[0] = 1;
    x[1] = 2;
    x[2] = 3;
    reverser(y, x, 3);

    for (int i = 0; i<3; i++)
    {
        std::cout << x[i] << " " << y[i] << std::endl;
    }

    return 0;
}
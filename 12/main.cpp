#include <iostream>

extern "C" bool calcSphere(double r, double *s, double *v);

int main()
{
    double r = 1.0;
    double s, v;
    if (calcSphere(r, &s, &v))
        std::cout << s << " " << v << std::endl;
    else
        std::cout << "error" << std::endl;
    return 0;
}

#include <iostream>
#include "stdio.h"

extern "C" bool calculateMeanStdDev(const double* a, int n, double* mean, double *stdDev);

int main()
{

    double a[] = {2,5,6,7,12,45,67,12,9,0,1,3,21};
    const int n = sizeof(a)/sizeof(double);

    double mean=0, stddev=0;

    if (calculateMeanStdDev(a, n, &mean, &stddev))
        printf("%g, %g\n", mean, stddev);
    else
        printf("Error\n");

    return 0;
}

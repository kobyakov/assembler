#include <iostream>

extern "C" void calculateSum(int a, int b, int c, int* s1, int *s2, int* s3);

int main()
{
    int s1,s2,s3;
    calculateSum(1,2,3,&s1,&s2,&s3);
    std::cout << s1 << " " << s2 << " " << s3 << std::endl;
    return 0;
}

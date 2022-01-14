#include <iostream>
#include "stdio.h"
#include "mmxVal.h"

enum mmxAddOp : unsigned int
{
    paddb,      // packed byte addition with wraparound
    paddsb,     // packed byte addition with signed saturation
    paddusb,    // packed byte addition with unsigned saturation
    paddw,      // packed word addition with wraparound
    paddsw,     // packed word addition with signed saturation
    paddusw,    // packed word addition with unsigned saturation
    paddd       // packed doubleword addition
};

extern "C" void mmxAdd(mmxVal a, mmxVal b, mmxAddOp op, mmxVal* c);
void mmxAddBytes(void);

int main()
{
    mmxAddBytes();


    return 0;
}

void mmxAddBytes(void)
{
    mmxVal a;
    mmxVal b;
    mmxVal c;
    char buff[256];
    a.i8[0] = 50;       b.i8[0] = 30;
    a.i8[1] = 80;       b.i8[1] = 64;
    a.i8[2] = -27;      b.i8[2] = -32;
    a.i8[3] = -70;      b.i8[3] = -80;
    a.i8[4] = -42;      b.i8[4] = 90;
    a.i8[5] = 60;       b.i8[5] = -86;
    a.i8[6] = 64;       b.i8[6] = 90;
    a.i8[7] = 100;      b.i8[7] = -30;

    printf("\n\n Packed byte addition -  signed integers\n");
    printf("a: %s\n", a.toString_i8(buff, sizeof(buff)));
    printf("b: %s\n", b.toString_i8(buff, sizeof(buff)));
 
    mmxAdd(a,b,mmxAddOp::paddsb, &c);
    printf("\npaddsb results\n");
    printf("c: %s\n", c.toString_i8(buff, sizeof(buff)));
    mmxAdd(a,b,mmxAddOp::paddb, &c);
    printf("\npaddb results\n");
    printf("c: %s\n", c.toString_i8(buff, sizeof(buff)));

    a.u8[0] = 50;       b.u8[0] = 30;
    a.u8[1] = 80;       b.u8[1] = 64;
    a.u8[2] = -27;      b.u8[2] = -32;
    a.u8[3] = -70;      b.u8[3] = -80;
    a.u8[4] = -42;      b.u8[4] = 90;
    a.u8[5] = 60;       b.u8[5] = -86;
    a.u8[6] = 64;       b.u8[6] = 90;
    a.u8[7] = 100;      b.u8[7] = -30;

    printf("\n\n Packed byte addition -  unsigned integers\n");
    printf("a: %s\n", a.toString_u8(buff, sizeof(buff)));
    printf("b: %s\n", b.toString_u8(buff, sizeof(buff)));

    mmxAdd(a,b,mmxAddOp::paddusb, &c);
    printf("\npaddusb results\n");
    printf("c: %s\n", c.toString_u8(buff, sizeof(buff)));
    mmxAdd(a,b,mmxAddOp::paddb, &c);
    printf("\npaddb results\n");
    printf("c: %s\n", c.toString_u8(buff, sizeof(buff)));

}
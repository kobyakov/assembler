all:
	nasm -f elf32 adder.asm -o adder.o
	g++ -m32 -no-pie main.cpp adder.o -o main.bin

clean:
	rm *.o *.bin 
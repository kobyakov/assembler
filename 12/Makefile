all:
	nasm -f elf32 sphere.asm -o sphere.o
	g++ -m32 -no-pie main.cpp sphere.o -o main.bin

clean:
	rm *.o *.bin

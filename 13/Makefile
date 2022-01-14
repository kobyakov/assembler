all:
	nasm -f elf32 meanDev.asm -o meanDev.o
	g++ -m32 -no-pie main.cpp meanDev.o -o main.bin

clean:
	rm *.o *.bin

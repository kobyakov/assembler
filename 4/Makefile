all:
	nasm -f elf32 reverser.asm -o reverser.o
	g++ -m32 -no-pie main.cpp reverser.o -o main.bin

clean:
	rm *.o *.bin 
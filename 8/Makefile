all:
	nasm -f elf32 muldiv.asm -o muldiv.o
	g++ -m32 -no-pie main.cpp muldiv.o -o main.bin

clean:
	rm *.o *.bin 
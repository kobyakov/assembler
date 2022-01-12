all:
	nasm -f elf32 calculateSum.asm -o calculateSum.o
	g++ -m32 -no-pie main.cpp calculateSum.o -o main.bin

clean:
	rm *.o *.bin 
all:
	nasm -f elf32 mmxAddition.asm -o mmxAddition.o -g -F dwarf
	g++ -m32 -no-pie -g main.cpp mmxVal.cpp mmxAddition.o -o main.bin

clean:
	rm *.o *.bin

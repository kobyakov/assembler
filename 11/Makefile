all:
	nasm -f elf32 temperatures.asm -o temperatures.o
	g++ -m32 -no-pie main.cpp temperatures.o -o main.bin

clean:
	rm *.o *.bin 
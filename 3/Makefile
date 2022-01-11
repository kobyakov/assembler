all:
	nasm -f elf32 main.asm -g
	gcc -g -m32 -o main.bin main.o

clean:
	rm main.o main.bin

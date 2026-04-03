all:
	nasm -f bin boot.asm -o boot.bin
	gcc -ffreestanding -c kernel.c -o kernel.o
	ld -o kernel.bin -T linker.ld kernel.o
	cat boot.bin kernel.bin > myos.bin

run:
	qemu-system-x86_64 -drive format=raw,file=myos.bin

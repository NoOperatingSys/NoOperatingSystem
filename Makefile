all:
	nasm -fbin rootof.ourproblems -o boot.bin
	qemu-system-x86_64 boot.bin

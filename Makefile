all:
#	chmod a+x ./nasm_linux_x64
	./nasm_linux_x64 -f elf32 src/kernel.asm -o  build/kasm.o
	gcc -m32 -c src/C/kernel.c -o build/kc.o
	ld -m elf_i386 -T src/C/link.ld -o build/kernel build/kasm.o build/kc.o

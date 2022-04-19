all: clean assemble

assemble:
	mkdir ./build
	nasm -f bin src/main.asm -o ./build/boot.bin

run:
	qemu-system-x86_64 ./build/boot.bin

clean:
	rm -rf ./build

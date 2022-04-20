all: clean assemble
github: installnasm clean assemble

installnasm:
	sudo apt-get install -y --quiet nasm

assemble:
	mkdir ./build
	nasm -f bin src/main.asm -o ./build/boot.bin
run:
	qemu-system-x86_64 ./build/boot.bin

trun:
	qemu-system-x86_64 -nographic ./build/boot.bin

clean:
	rm -rf ./build

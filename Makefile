all: clean assemble
github: installnasm clean assemble

installnasm:
	(sudo -v && sudo apt-get install -y --quiet nasm) || apt-get install nasm || (echo apt no work;exit 1)

assemble:
	mkdir ./build
	nasm -f bin src/main.asm -o ./build/boot.bin
run:
	qemu-system-x86_64 ./build/boot.bin

trun:
	qemu-system-x86_64 -nographic ./build/boot.bin

clean:
	rm -rf ./build

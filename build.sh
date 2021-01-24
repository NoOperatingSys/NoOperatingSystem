rm -rf build
mkdir build
nasm -f bin ./boot_sect.asm -o ./build/boot_sect.bin
qemu-system-x86_64 build/boot_sect.bin

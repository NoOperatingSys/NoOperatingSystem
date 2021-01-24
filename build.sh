rm -rf build
mkdir build
nasm -f bin ./boot_sect.cum -o ./build/boot_sect.bin

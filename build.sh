rm -rf build
mkdir build
./nasm_linux_x64 -f bin ./boot_sect.cum -o ./build/boot_sect.bin

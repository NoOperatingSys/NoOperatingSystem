
rm -rf build
mkdir build
./tools/nasm_linux_x64 -f bin src/boot_sect.cum -o ./build/boot_sect.bin && echo "Built Successfully, Running." && qemu-system-x86_64 ./build/boot_sect.bin

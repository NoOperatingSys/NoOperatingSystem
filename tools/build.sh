
rm -rf build
mkdir build
./tools/nasm_linux_x64 -f bin src/boot_sect.cum -o ./build/boot_sect.bin && echo "Built Successfully. Now, use qemu x86_64 to run the file in the build/ directory."


rm -rf build
mkdir build
./nasm_linux_x64 -f bin boot.asm -o ./build/boot.bin && echo "Built Successfully. Now, use qemu x86_64 to run the file in the build/ directory."

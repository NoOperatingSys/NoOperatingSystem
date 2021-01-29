
rm -rf build
mkdir build
./tools/nasm_linux_x64 -f bin src/boot.asm -o ./build/boot.bin && echo "Built Successfully, Running." && qemu-system-x86_64 ./build/boot.bin

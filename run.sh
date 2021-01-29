
rm -rf build
mkdir build
./nasm_linux_x64 -f bin boot.asm -o ./build/boot.bin && echo "Built Successfully, Running.\nPress Ctrl +A and then X to exit" && read junk && qemu-system-x86_64 -nographic ./build/boot.bin

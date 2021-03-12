
rm -rf build
mkdir build
./nasm_linux_x64 -f bin boot.asm -o ./build/boot.bin && echo "Built Successfully, Running.\nPress Ctrl +A and then X to exit on Linux or Ctrl+C on Windows [press enter]" && read junk && qemu-system-x86_64 -nographic ./build/boot.bin

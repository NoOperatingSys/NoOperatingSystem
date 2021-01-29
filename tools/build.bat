@echo off
rmdir build /f
mkdir build
nasm -f bin src/boot.asm -o ./build/boot.bin && echo "Built Successfully."

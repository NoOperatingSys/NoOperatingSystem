@echo off
rmdir build /f
mkdir build
nasm -f bin boot.asm -o ./build/boot.bin && echo "Built Successfully."

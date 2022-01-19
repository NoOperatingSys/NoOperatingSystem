@echo off
rmdir build /f
mkdir build
nasm -f bin boot_sect.cum -o ./build/boot.bin && echo "Built Successfully."

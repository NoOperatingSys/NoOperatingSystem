@echo off
rmdir build /f
mkdir build
nasm -f bin src/boot_sect.cum -o ./build/boot_sect.bin && echo "Built Successfully."

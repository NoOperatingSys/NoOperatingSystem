rm -rf build
mkdir build
sudo apt install git -y
git clone https://github.com/NOperatingSystem/Dripman.git
cd Dripman
git pull origin master
cd ..
./nasm_linux_x64 -f bin ./boot_sect.cum -o ./build/boot_sect.bin && echo "Built Successfully. Now, use qemu x86_64 to run the file in the build/ directory."

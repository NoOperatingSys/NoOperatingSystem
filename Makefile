all:
	chmod a+x ./nasm_linux_x64
	mkdir build 2>/dev/null || rm build/* 2>/dev/null || true
	./nasm_linux_x64 -f bin bootload.er -o ./build/boot.bin
qemu:
	echo "Press Ctrl A+X to exit on Linux or Ctrl+C on Windows.\n[Press Return to Continue]"
	read continue
	qemu-system-x86_64 -nographic ./build/boot.bin

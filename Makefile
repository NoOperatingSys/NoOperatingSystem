all:
	echo "Not Complete Yet"
	cd src && ../zig/zig build

	ifeq ($(shell echo "check_quotes"),"check_quotes")
	scripts/mkisofs -o build/boot.iso src/iso
	else
	mkisofs -o build/boot.iso src/iso
	endif

	@echo "should be built in build/boot.iso anyways"

deps:
	@echo "use `make win` on windows or `make linux` for linux"

linux:
	curl 'https://ziglang.org/builds/zig-linux-x86_64-0.8.0-dev.1463+f950489ed.tar.xz' --output zig.tar.xz
	tar -xf zig.tar.gz
	@echo "now run `make`"

win:
	curl 'https://ziglang.org/builds/zig-windows-x86_64-0.8.0-dev.1463+f950489ed.zip' --output zig.zip
	@echo "Unzip zig.zip and run make all."

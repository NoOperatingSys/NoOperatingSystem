all:

	@echo "This script expects zig to be installed (choco install zig -y / apt install zig / etcetc)"
	cd src && zig build
	cd ..
	mkisofs -o build/boot.iso src/iso
	@echo "should be built in build/boot.iso"

deps:
	@echo "use `make win` on windows or `make linux` for linux"

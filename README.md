![](https://raw.githubusercontent.com/MoltenCoreDev/noOS/master/logo.png)
![CI](https://github.com/MoltenCoreDev/noOS/workflows/CI/badge.svg)


# Installation
Load thy build image on a flash drive of thyne using [Etcher](http://etcher.io). Then reboot thy computer, and keep pressing (spam) the boot menu key (google what it is for thy computer) until you see thy boot menu. Choose thy flash drive, and thy art done. **Disclaimer: This has not been tested and we have no idea what will happen. Please do tell if you know.**

# Building
just run ```sh ./build.sh```

# Running
## With VirtualBox (more noob-friendly):
- Download VirtualBox from the [VirtualBox downloads page](https://www.virtualbox.org/wiki/Downloads).
- Open up Virtualbox
### Creating thy VM
- Thy shall click the *New* buttom to create thyself a Virtual Machine.
- Pick any name thy choose. For *Type*, choose Other, and for Version (the second dropdown menu), choose *Other (64-bit)*.
- In the next section (Memory), type 2 into the number box.
- In the next section (Hard Disk), thy should choose *Do not add a virtual hard disk*.
### Configuring thy VM
- Once thee has created thy virtual machine, click on Settings.
- Click on *Storage* in the menu that pops up.
- Near the bottom of the menu, click the image of the small green card with a plus.
- In the small tooltip-like menu that pops up, select *I82078 (Floppy)*
### Adding thy boot image
- Quickly open the Files app. Go to the folder with all of the files, and go into the `builds` directory. Rename that file to `boot.img`.
- In the new entry that shows up (*Controller: Floppy*), click the picture of the floppy disk (looks like the save button on some apps) with a plus sign.
- Click Add.
- Now, select the `boot.img` file that you renamed 3 steps ago, and click Open at the bottom of the window.
- Once you do that, press Ok to close the popup window.
### Starting
- Press *Start*

## With QEMU (for the nerds and computer people):
- Get QEMU (qemu-system-x86_64) from the [QEMU downloads page](https://www.qemu.org/download/), or with your package manager on Linux.
- Run build/boot_sect.bin with QEMU (`qemu-system-x86_64 build/boot_sect.bin`), or however you wish to run it.

*Made by an American person and a Polish person and the wonderful noOS community*

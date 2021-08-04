# Running

## Requirements
To run noOS, you'll need the following:

- Docker
- a Linux distro
- qemu

## Instructions

First, build the OS from the [building instructions](BUILDING.md) 

Then, run the following in the command line

```
cd "root of project"
qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso
```

This will launch qemu to emulate the kernel io you just built.

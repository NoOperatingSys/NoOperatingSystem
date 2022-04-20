[org 0x07c00]
[bits 16]

mov bx, BOOT_TEXT
call print

mov bp, 0x8000
mov sp, bp

mov bx, 0x9000
mov dh, 1
call load_disk

mov dx, SECTOR2_DATA
call print

jmp $

%include "src/io.asm"
%include "src/load_disk.asm"

BOOT_TEXT: db "Welcome to NoOS v2.0!", 0x0a, 0x0d, 0

times 510 - ($ - $$) db 0
dw 0xaa55

SECTOR2_DATA: db "Welcome to hell!", 0x0a, 0x0d, 0

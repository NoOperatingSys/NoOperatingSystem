[org 0x07c00]
[bits 16]

; Please refer to https://www.nasm.us/doc/

mov bx, BOOT_TEXT
call print
mov bx, 0x9000
mov dh, 2		; read 2 sectors
call disk_load

%include "src/io.asm"
%include "src/disk_load.asm"

BOOT_TEXT:
        db "Welcome to NoOS v2.0!", 0

times 510 - ($ - $$) db 0
db 0x55
db 0xaa

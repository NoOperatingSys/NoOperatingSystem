[org 0x07c00]
[bits 16]

; Please refer to https://www.nasm.us/doc/

mov bx, BOOT_TEXT
call print


%include "src/print.pog"


BOOT_TEXT:
        db "Welcome to NoOS, version 2.0!", 0

times 510 - ($ - $$) db 0
db 0x55
db 0xaa

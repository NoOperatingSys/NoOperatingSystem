[org 0x07c00]
[bits 16]

; Please refer to https://www.nasm.us/doc/



times 510 - ($ - $$) db 0
dw 0x55aa ; magic word

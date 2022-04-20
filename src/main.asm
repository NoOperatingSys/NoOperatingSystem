[org 0x07c00]
[bits 16]

mov bp, 0x9000
mov sp, bp

call switch_to_pm

jmp $

[bits 32]
BEGIN_PM:
        mov edx, 0xb8000

        mov al, 'A'
        mov ah, 0x0f

        mov [edx], ax

        mov ebx, PM_TEXT
        call print_pm

        jmp $

%include "src/io.asm"
%include "src/gdt.asm"
%include "src/switch.asm"

BOOT_TEXT: db "Welcome to NoOS v2.0!", 0x0a, 0x0d, 0
PM_TEXT: db "Loaded the 32bit PM!", 0x0a, 0x0d, 0



times 510 - ($ - $$) db 0
dw 0xaa55

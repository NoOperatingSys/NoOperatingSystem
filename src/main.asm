[org 0x07c00]
[bits 16]

; Please refer to https://www.nasm.us/doc/

mov bx, BOOT_TEXT
call print


print:
        mov al, [bx]    ; we use the BX register as storage for our string
                        ; move the memory pointer of 'bx' to al
                        ; al stores our character we wish to print

        cmp al, 0 ; Every string ends with a null symbol (0)
        je finish_print

        mov ah, 0x0e    ; tty mode
        int 0x10        ; print what we already have in the 'al' register

        add bx, 1       ; increment the current character pointer by 1 char

        jmp print       ; recurse

finish_print:
        popa      ; Clear the stack
        ret

BOOT_TEXT:
        db "Welcome to NoOS, version 2.0!", 0

times 510 - ($ - $$) db 0
db 0x55
db 0xaa

mov ah, 0x0e ; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10
mov al, ' '
int 0x10
mov al, 'f'
int 0x10
mov al, 'r'
int 0x10
mov al, 'o'
int 0x10
mov al, 'm'
int 0x10
mov al, ' '
int 0x10
mov al, 'n'
int 0x10
mov al, 'o'
int 0x10
mov al, 'O'
int 0x10
mov al, 'S'
int 0x10
mov al, ' '
int 0x10
mov al, 't'
int 0x10
mov al, 'e'
int 0x10
mov al, 'a'
int 0x10
mov al, 'm'
int 0x10
mov al, ' '
int 0x10
mov al,':'
int 0x10
mov al,'D'
int 0x10



loop:
    jmp loop 
times 510-($-$$) db 0
dw 0xaa55 

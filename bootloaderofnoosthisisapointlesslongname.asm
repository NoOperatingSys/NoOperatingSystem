mov ah, 0x0e ; tty mode
<<<<<<< HEAD

mov bp, 0x8000
mov sp, bp
=======
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
>>>>>>> 09279106720e8e389d9748c37d4f28367e11a1af

push '^'
push 'm'
push 'a'
push 'e'
push 't'
push ' '
push 'S'
push 'O'
push 'o'
push 'n'
push ' '
push 'm'
push 'o'
push 'r'
push 'f'
push ' '
push 'o'
push 'l'
push 'l'
push 'l'
push 'e'
push 'H'

print:
	pop bx
	mov al, bl
	cmp al, '^'
	je exit
	int 0x10
	jmp print
exit:
	


loop:
    jmp loop 
times 510-($-$$) db 0
dw 0xaa55 

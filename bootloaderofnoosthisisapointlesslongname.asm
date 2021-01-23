mov ah, 0x0e ; tty mode

mov bp, 0x8000
mov sp, bp

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

[org 0x7c00]
	mov bp, 0x9000 ; whatever that means
	mov sp, bp
	mov bx, MSG_REAL
	call print
	call pm
	jmp $ ; unused thing that never gets called but if its not there thats a bug

%include "src/asm/print.asm"
%include "src/asm/print.32.asm"
%include "src/asm/gdt.asm"
%include "src/asm/switch.32.asm"

[bits 32]
BEGIN_PM:
	mov ebx, MSG_32
	call print_str_pm
	jmp $


MSG_REAL: db "[noOS] Started in 16 bits, Loading... ", 0
MSG_32: db "[noOS] 32 bit protected mode loaded.", 0
; BootSector
times 510-($-$$) db 0
dw 0xaa55

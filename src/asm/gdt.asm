; im not going to lie i have no idea what this does, it just works.

gdt_start: 
    dd 0x0 ; 4 byte
    dd 0x0 ; 4 byte

gdt_code: 
    dw 0xffff    
    db 0x0       
    db 10011010b 
    db 11001111b 
    db 0x0       

gdt_data:
    dw 0xffff
    dw 0x0
    db 0x0
    db 10010010b
    db 11001111b
    db 0x0

gdt_end:

gdt_desc:
    dw gdt_end - gdt_start - 1 
    dd gdt_start 

; define some constants for later bc we apparently need them
CODE_SEG equ gdt_code - gdt_start
DATA_SEG equ gdt_data - gdt_start

; GDT implementation
; 20/4/2022

GDT_start:
        ; GDT starts with null 8 bytes
        null_descriptor:
                dd 0
                dd 0
        code_descriptor:
                dw 0xffff     ; limit
                dw 0x0        ; base
                db 0x0        ; base too
                db 10011010   ; flags
                db 11001111   ; other and limit (last 4 bits)
        data_descriptor:
                dw 0xffff
                dw 0
                db 0
                db 0
                db 10010010
                db 11001111
                db 0
GDT_end:

GDT_descriptor:
        dw GDT_end - GDT_start - 1  ; size
        dd GDT_start                ; start

CODE_SEG equ code_descriptor - GDT_start
DATA_SEG equ data_descriptor - GDT_start

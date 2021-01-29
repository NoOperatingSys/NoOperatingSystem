[bits 32]

VID_MEMORY equ 0xb8000
WOB equ 0x0f ; wee woo

print_str_pm:
    pusha
    mov edx, VID_MEMORY

print_str_pm_loop:
    mov al, [ebx]
    mov ah, WOB

    cmp al, 0
    je print_str_pm_finish

    mov [edx], ax
    add ebx, 1
    add edx, 2
    
    jmp print_str_pm_loop

print_str_pm_finish:
    popa
    ret
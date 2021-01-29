[bits 16]
pm:
    cli ; whatever the fuck this does
    lgdt [gdt_desc]
    mov eax, cr0 
    or eax, 0x1
    mov cr0, eax
    jmp CODE_SEG:init_pm

[bits 32]
init_pm:
    ;lol 32 bits
    mov ax, DATA_SEG
    mov ds, ax
    mov ss, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    mov ebp, 0x90000 ; what does this mean
    mov esp, ebp

    call BEGIN_PM
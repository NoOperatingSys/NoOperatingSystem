[bits 16]
pm:
    cli ; disable interrupts
    lgdt [gdt_descriptor] ; load the gtd descriptor
    mov eax, cr0
    or al, 0x1 ;set 32-bit mode in cr0
    mov cr0, eax
    jmp CODE_SEG:init_pm ;far jump by using a different segment



[bits 32]
init_pm:
    ;lol 32 bit modes
    mov ax, DATA_SEG ;update seg registers
    mov ds, ax
    mov ss, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov esp, 0x90000 

    call BEGIN_PM ;yes moment

print:
    pusha

start:
    mov al, [bx]
    cmp al, 0
    je done ; if done call ret after discarding unused data

    ; print letter (if not done bc above)
    mov ah, 0x0e
    int 0x10 ; s
    add bx, 1 ; increment pointer?
    jmp start ; do loop

done:
    popa ; do the
    call print_nl
    ret ; return

print_nl:
    pusha
    
    mov ah, 0x0e
    mov al, 0x0a ; \n
    int 0x10
    mov al, 0x0d ; \n^2
    int 0x10
    popa ; do the
    ret ; ret 
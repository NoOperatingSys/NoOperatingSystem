; loads 'dh' sectors from drive 'dl' to 'es:bx'
load_disk:
        pusha

        push dx

        mov ah, 0x02  ; interrupt 0x13 function for reading
        mov al, dh    ; amount of sectors to read
        mov cl, 0x02  ; selection of the sector, 0x02 is the first available one

        mov ch, 0x00  ; cylinder to use
        mov dh, 0x00  ; head to use

        int 0x13
        jc disk_error

        pop dx
        cmp al, dh
        jne sectors_error
        popa
        ret
        
disk_error:
        mov bx, DISK_ERROR
        call print
        jmp halt 

sectors_error:
        mov bx, SECTOR_ERROR
        call print
        jmp halt

halt:
        jmp $

DISK_ERROR: db "CANNOT READ DISK", 0
SECTOR_ERROR: db "SECTORS NOT MATCHING", 0

; io.asm - contains input/output functions for 16 bit bios mode

; receiving data from 'bx'
print:
        pusha

print_loop:
        mov al, [bx]    ; we use the 'bx' register as storage for our string
                        ; move the memory pointer of 'bx' to al
                        ; al stores our character we wish to print

        cmp al, 0 ; Every string (should) end with a null symbol (0)
        je finish_print

        mov ah, 0x0e    ; tty mode
        int 0x10        ; print what we already have in the 'al' register

        add bx, 1       ; increment the current character pointer by 1 char

        jmp print_loop  ; recurse

finish_print:
        popa
        ret

VIDEO_ADDRESS equ 0xb8000

; 'ebx' is the string input
print_pm:
        pusha
        mov edx, VIDEO_ADDRESS ; Save the video address in 'edx'

ppm_loop:
        mov al, [ebx]
        mov ah, 0x0f

        cmp al, 0
        je ppm_done

        mov [edx], ax
        
        add ebx, 1  ; increment the string by one character
        add edx, 2  ; increment the pointer by one character-style pair

        jmp ppm_loop

ppm_done:
        popa
        ret

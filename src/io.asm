print:
        mov al, [bx]    ; we use the BX register as storage for our string
                        ; move the memory pointer of 'bx' to al
                        ; al stores our character we wish to print

        cmp al, 0 ; Every string (should) end with a null symbol (0)
        je finish_print

        mov ah, 0x0e    ; tty mode
        int 0x10        ; print what we already have in the 'al' register

        add bx, 1       ; increment the current character pointer by 1 char

        jmp print       ; recurse

finish_print:
        popa      ; Clear the stack
        ret

; TODO: get input

section .multiboot_header

header_start:
    dd 0xe85250d6
    dd 0 ; prot mode 1386
    dd header_end - header_start
    dd 0x100000000  - (0xe85250d6 + 0 + (header_end - header_start))
    dw 0
    dw 0
    dw 8
header_end:

; Magic! :D
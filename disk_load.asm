disk_load:
	pusha 
	push dx		; number of sectors (input parameter)

	mov ah, 0x02 	; read function 
	mov al, dh 	; number of sectors
	mov dl, 0x00 	; drive number
	mov dh, 0x00 	; head number
	mov ch, 0x00 	; cylinder number  
	mov cl, 0x02 	; sector number 

	; read data to [es:bx] 
	int 0x13
	jc error 	; carry bit is set -> error

	pop dx 
	cmp al, dh 	; read correct number of sectors
	jne error 

	popa 
	ret 

error:
	mov bx, error_msg
	call printf 
;	jmp $ 
	ret

error_msg: db "Rror", 0 

test_func:
	mov ebx, prompt
	call print_pm
	mov ah, 00h
	int 16h
	mov ah, 0x0e
	int 0x10
;	cmp al, 'q'
;	je exit
	cmp al, 'h'
	je helo
;	cmp al, '.'
;	je endlessread
	jmp test_func

btest_func:
	mov ah, 86h
	mov ch, 0x0
	mov dx, 0x2
	int 15
	mov ebx, TEST_MSG
	call print_pm

TEST_MSG: db "Hello World", 0x0a, 0x0d, "NewLine", 0x0a, 0x0d, 0
prompt: db "prompt>", 0
HELLOWORLD: db "It works congrats", 0x0a, 0x0d, 0
helo:
	mov ebx, HELLOWORLD
	call print_pm
	jmp test_func

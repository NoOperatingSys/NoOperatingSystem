test_func:
	mov ebx, prompt
	call print_pm
	mov ah, 00h
	int 16h
	mov ah, 0x0e
	int 0x10
	cmp al, 'h'
	je helo
	jmp test_func

TEST_MSG: db "Hello World --- Hello World", 0x0a, 0x0d, 0
prompt: db "prompt>", 0
HELLOWORLD: db "It works congrats", 0x0a, 0x0d, 0
helo:
	mov ebx, HELLOWORLD
	call print_pm
	jmp test_func

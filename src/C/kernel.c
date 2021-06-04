/*
*  kernel.c
*/

char *vidptr = (char*)0xb8000; 	//video mem begins here.
unsigned int i = 0;
unsigned int j = 0;

#include "clear.c"
#include "print.c"

void kmain(void)
{
	clear(j);

	print("Hello from the noOS team", 0x07);
	print(" 19$ fortnite card who wants it?", 0x04);

	return;
}
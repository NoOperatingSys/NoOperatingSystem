/*
*  kernel.c
*/

char *vidptr = (char*)0xb8000; 	//video mem begins here.
unsigned int i = 0;
unsigned int j = 0;
unsigned int ij = 0;

unsigned int row;
unsigned int col;

unsigned int rowsize = 25;
unsigned int colsize = 80;

#include "clear.c"
#include "print.c"


void kmain(void)
{
	clear();

	printrow("hell o from the noos team a!!121#!@3", 0x04, 4);

	return;
}
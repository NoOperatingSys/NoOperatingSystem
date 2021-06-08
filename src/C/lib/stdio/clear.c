/*
* clear.c 
*/
// This clears the video memory
void clear() {
	j = 0;
	while(j < rowsize * colsize * 2) {
		/* blank character */
		vidptr[j] = ' ';
		/* attribute-byte - light grey on black screen */
		vidptr[j+1] = 0x08; 		
		j = j + 2;
	}

	j = 0;
	return;
}
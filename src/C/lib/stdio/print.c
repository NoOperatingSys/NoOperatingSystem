/*
* print.c
*/

void print(char *string, char colour) {
    j = 0;
    while(string[j] != '\0') { // if the string is not a 0 (nothing)
        // Draw the ascii character in the place of i
        vidptr[i] = string[j];
        // Draw the background
        vidptr[i+1] = colour;

        // Increment the string counter
        j++;
        // Increment the video memory counter by 2
        i = i + 2;
    }
    return;
}

void printrow(char *string, char colour, int row) {
    int rowstart = row * colsize * 2; // times two because 2 bytes
    i = rowstart;
    j = 0;

    while(string[j] != '\0') {
        vidptr[i] = string[j];
        vidptr[i+1] = colour;

        j++;
        i = i + 2;
    }
    
    return;
}
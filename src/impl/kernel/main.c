#include "print.h"
int wait_loop0 = 10000;
int wait_loop1 = 6000;

// for microprocessor without timer, if it has a timer refer to vendor documentation and use it instead.
void wait( int seconds )
{   // this function needs to be finetuned for the specific microprocessor
    int i, j, k;
    for(i = 0; i < seconds; i++)
    {
        for(j = 0; j < wait_loop0; j++)
        {
            for(k = 0; k < wait_loop1; k++)
            {   // waste function, volatile makes sure it is not being optimized out by compiler
                int volatile t = 120 * j * i + k;
                t = t + 5;
            }
        }
    }
}
void kernel_main()
{
    print_clear();
    print_set_color(PRINT_COLOR_WHITE, PRINT_COLOR_BLACK);
    for (;;)
    {
        for (uint8_t i = 1; i < (uint8_t) 16; i++)
        {
            print_set_color(i, PRINT_COLOR_BLACK);
            if ( set_position(25, 13) != 0) {
                return;
            }
            print_str("Welcome to 64 bit long mode <3");
            wait(1);
        }
    }


}
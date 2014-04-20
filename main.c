/* Name: Blinking LED
   Architecture: ATtiny85
 */
#include <avr/io.h>
#include <util/delay.h>
 
int main(void)
{
  DDRB = 0b00000010;
  while(1){
    _delay_ms(200);
    PORTB ^= 0b00000010;
  }
  return 0;
}

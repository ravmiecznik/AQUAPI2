/*
 * main.cpp
 *
 *  Created on: Dec 23, 2022
 *      Author: rafal
 */
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include "usart/usart.h"


Usart* Serial;


/****************************************************************/
/*
 * Configuration of standard output for functions printf, printf_p and so on
 */
static int put(char c, FILE *stream){
	Serial->Putchar(c);
	return 0;
}
static FILE uartout = {0};
void setup_stdout_for_printf(){
	fdev_setup_stream(&uartout, put, NULL, _FDEV_SETUP_WRITE);
	stdout = &uartout;
	stderr = &uartout;
}
/****************************************************************/

UsartConfig get_usart_config(){
	UsartConfig uc;
	uc.baud = 9600;
	uc.rx_buffer_size = 100;
	uc.tx_buffer_size = 100;
	uc.u_num = usart_num::usart0;
	return uc;
}

#define DELAY 500

int main(void)
{
	Usart serial(get_usart_config());
	Serial = &serial;
	sei();
	setup_stdout_for_printf();

	DDRB |= (1<<DDB5);
    while (1)
    {
	PORTB |= (1<<PORTB5);
	_delay_ms(DELAY);
	PORTB &= ~ (1<<PORTB5);
	_delay_ms(DELAY);
	printf("hello\r\n");
    }
}

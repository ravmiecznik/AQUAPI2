/*
 * main.cpp
 *
 *  Created on: Dec 23, 2022
 *      Author: rafal
 */
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <stdio.h>
#include <assert.h>
#include "usart/usart.h"
#include "avr_adc/avr_adc.h"


Usart* Serial;

void get_input(uint16_t& cnt){
	CircBuffer cmd_buff(100);
	printf("root>");
	for(char c=Serial->get(); c != '\r'; c=Serial->get()){
		if(c){
			if(cmd_buff.put(c)){
				Serial->Putchar(c);
			}
			if(c == 127){
				cmd_buff.pop_last(2);
				printf("\33[D"); // mv cursor left
				printf("\33[J"); // clear char
				PORTB ^= (1<<PB5);
			}

		}
//				printf("%u ", c);
	}
	printf("\n\rI got: ");
	while(cmd_buff.available()){

		Serial->Putchar(cmd_buff.get());
	}
	cmd_buff.flush();
	cnt = 0;
	while(not Serial->available());
	Serial->rx_buffer.flush();
}

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
	uc.rx_buffer_size = 50;
	uc.tx_buffer_size = 500;
	uc.u_num = usart_num::usart0;
	return uc;
}

#define DELAY 500

using namespace adc;

int main(void)
{
	Usart serial(get_usart_config());
	Serial = &serial;
	sei();
	setup_stdout_for_printf();


	Adc::enable();
	Adc::select_channel(0);
	Adc::select_channel(1);
	Adc::select_channel(2);
	Adc::select_channel(3);
	Adc::select_channel(4);
	Adc::select_channel(5);
	Adc::adc_on_interrupt(prescaler::div_128, vref::avcc_ext_cap, 10);
	Adc adc;
	char buf[10];
	DDRB |= (1<<PB5);
	uint16_t cnt = 0;
    while (true)
    {
    	_delay_ms(1);
    	if((cnt++)%1000 == 0){
			printf("\033[2J"); // clean screen
			printf("\033[H");	// move cursor HOME

			printf("------------------\n\r");
			printf("thermo %u\n\r", adc.get_adc_results().adc0);
			printf("thermo %u\n\r", adc.get_adc_results().adc1);
			printf("thermo %u\n\r", adc.get_adc_results().adc2);
			printf("thermo %u\n\r", adc.get_adc_results().adc3);
			printf("thermo %u\n\r", adc.get_adc_results().adc4);
			printf("thermo %u\n\r", adc.get_adc_results().adc5);
			printf("------------------\n\r");
    	}

		if(serial.available()){
			get_input(cnt);
		}


    }
}

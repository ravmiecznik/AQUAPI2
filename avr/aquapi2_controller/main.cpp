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

#include "atm_timer/atm_timer16bit.h"
#include "usart/usart.h"
#include "avr_adc/avr_adc.h"



Usart* Serial;

//experimental
void* operator new(size_t, void* p) {return p;};
void* operator new(size_t s) {return malloc(s);};


//experimental interraction when serial output (stdout) is connected to SCREEN
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
using namespace timer;


/*
 * Screen manipulation
 * https://student.cs.uwaterloo.ca/~cs452/terminal.html
 */
namespace Screen{

	enum class text_color{
		black = 30,
		red,
		green,
		yellow,
		blue,
		magenta,
		cyan,
		white
	};

	void clear(){
		printf_P(PSTR("\033[2J\033[H")); // clean screen / move cursor HOME
	}

	/*
	 * Move cursor
	 */
	void mv_cursor(uint16_t row, uint16_t col=0){
		printf_P(PSTR("\033[%u;%uH"),  row, col); // clean screen / move cursor HOME
	}
	void set_color(text_color color){
		printf_P(PSTR("\033[%um"), color);
	}
};

int main(void)
{
	Usart serial(get_usart_config());
	Serial = &serial;
	setup_stdout_for_printf();
	sei();

	{//auto remove temp variables in this scope

		bitfield8 adc_channels_ena;
		adc_channels_ena.b0 = 1;
		adc_channels_ena.b7 = 1;
		adc_channels_ena.b2 = 1;
		uint8_t samples_num = 3;
		Adc::enable_interrupt(adc_channels_ena, prescaler::div_128, vref::avcc_ext_cap, samples_num);
	}
	adc_results_s adc_results;


    while (true)
    {
    	Screen::set_color(Screen::text_color::green);
    	Screen::clear();
    	Screen::mv_cursor(20);
    	adc_results = Adc::get_adc_results();
    	printf("ADC1: %u\n\r", adc_results.adc0);
    	printf("ADC1: %u\n\r", adc_results.adc1);
    	printf("ADC2: %u\n\r", adc_results.adc2);
    	printf("ADC3: %u\n\r", adc_results.adc3);
    	printf("ADC4: %u\n\r", adc_results.adc4);
    	printf("ADC5: %u\n\r", adc_results.adc5);
    	printf("ADC6: %u\n\r", adc_results.adc6);
    	printf("ADC7: %u\n\r", adc_results.adc7);
    	printf("---------------------\n\r");

    	_delay_ms(500);


    }
}

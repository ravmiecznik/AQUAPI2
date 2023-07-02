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
#include "avr_screen/screen.h"



Usart* Serial;

//experimental
void* operator new(size_t, void* p) {return p;};
void* operator new(size_t s) {return malloc(s);};
void operator delete(void* ptr) {free(ptr);};


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




int main(void)
{
	Usart serial(get_usart_config());
	Serial = &serial;
	setup_stdout_for_printf();
	sei();

	Timer1 timer1_16bit(ClockSelection::clk_d256);

	uint16_t t0 = timer1_16bit.get();
    while (true)
    {

    	Screen::get_input(serial);
    	Screen::set_text_color(Screen::text_color::green);
    	Screen::clear();
    	Screen::mv_cursor(20);
    	printf("t16 %u\n\r", timer1_16bit.to_ms(timer1_16bit.get() - t0));
    	Time t = timer1_16bit.get_time();
    	printf("uptime %02uh:%02um:%02us\n\r", t.hours, t.minutes, t.seconds);
    	printf("---------------------\n\r");
    	t0 = timer1_16bit.get();
    	_delay_ms(500);


    }
}

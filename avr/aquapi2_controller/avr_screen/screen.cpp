/*
 * screen.cpp
 *
 *  Created on: Jul 2, 2023
 *      Author: rafal
 */


#include <stdio.h>
#include "../common/common.h"
#include "screen.h"


namespace Screen{

	void clear(){
		PRINTFP("\033[2J\033[H"); // clean screen / move cursor HOME
	}

	/*
	 * Move cursor
	 */
	void mv_cursor(uint16_t row, uint16_t col){
		printf_P(PSTR("\033[%u;%uH"),  row, col);
	}

	/*
	 * Move cursor left
	 */
	void mv_cursor_left(){
		printf_P(PSTR("\33[D")); // mv cursor left
	}

	/*
	 * Clear last character
	 */
	void clear_char(){
		printf_P(PSTR("\33[J")); // clear char
	}

	/*
	 * Set text color
	 */
	void set_text_color(text_color color){
		printf_P(PSTR("\033[%um"), color);
	}

	//experimental interaction when serial output (stdout) is connected to SCREEN
	void get_input(Usart& serial){
		if(serial.available()){
			CircBuffer cmd_buff(100);
			printf("root>");
			for(char c=serial.get(); c != '\r'; c=serial.get()){
				if(c){
					if(cmd_buff.put(c)){
						serial.Putchar(c);
					}
					if(c == 127){
						cmd_buff.pop_last(2);
						mv_cursor_left();
						clear_char();
					}

				}
			}
			printf("\n\rI got: ");
			while(cmd_buff.available()){
				serial.Putchar(cmd_buff.get());
			}
			cmd_buff.flush();
			while(not serial.available());
			serial.rx_buffer.flush();
		}
	}

}

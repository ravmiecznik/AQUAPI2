/*
 * screen.h
 *
 *  Created on: Jul 2, 2023
 *      Author: rafal
 */


/*
 * This library is intended to support Unix screen application:
 * -cursor movement
 * -remove lines, clear screen
 * -color support
 * to be extended
 */

#ifndef AVR_SCREEN_SCREEN_H_
#define AVR_SCREEN_SCREEN_H_

#include "../usart/usart.h"

/*
 * Screen manipulation
 * https://student.cs.uwaterloo.ca/~cs452/terminal.html
 */
namespace Screen{
	//TODO: how to get terminal size ?
	// in theory this is a sequence to get terminal size: \033[8;20t
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

	void clear();

	/*
	 * Move cursor
	 */
	void mv_cursor(uint16_t row, uint16_t col=0);

	/*
	 * Set text color
	 */
	void set_text_color(text_color color);

	void get_input(Usart& serial);
};


#endif /* AVR_SCREEN_SCREEN_H_ */

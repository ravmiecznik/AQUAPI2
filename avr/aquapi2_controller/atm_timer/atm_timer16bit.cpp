/*
 * timer.cpp
 *
 *  Created on: Apr 8, 2023
 *      Author: rafal
 */

#include "atm_timer16bit.h"

#include <avr/interrupt.h>
#include <stdio.h>

namespace timer{

	ISR(TIMER1_OVF_vect){
		Timer1::time+=tcnt_to_ms(0xffff, Timer1::prescaler_s);
	}

	Time Timer1::time = Time{23,42,30,0};
	uint16_t Timer1::prescaler_s = 0;
}



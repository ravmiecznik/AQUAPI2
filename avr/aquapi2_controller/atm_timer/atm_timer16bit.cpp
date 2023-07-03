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
		Timer1::toi_counter+=1;
	}

	uint32_t Timer1::toi_counter = 0;
	uint16_t Timer1::prescaler_s = 0;
}



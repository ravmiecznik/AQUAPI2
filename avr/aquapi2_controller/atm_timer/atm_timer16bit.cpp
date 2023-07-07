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

	volatile uint32_t Timer1::toi_counter = 0;
	uint16_t Timer1::prescaler_s = 0;

	Time Timer1::get_time(Time add_Time){
		uint64_t single_toi_time_us = to_us(0x10000);
		auto additional_time = add_Time.to_ms<uint32_t>();
		return Time((single_toi_time_us*toi_counter+tcnt_us())/1000 + additional_time); //improve time accuracy by first adding us and then truncate to ms
	}


}



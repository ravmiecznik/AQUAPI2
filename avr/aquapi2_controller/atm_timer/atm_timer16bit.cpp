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

	// TODO: implement custom ISR handler (ISR_Functor ?)
	ISR(TIMER1_COMPA_vect){
		PORTB ^= (1<<PB5);
	}

	ISR(TIMER1_COMPB_vect){

	}

	/*
	 * OCIA interrupt enable
	 */
	void Timer_16bit::ocia_int_enable(uint16_t ocra_val){
		timsk.ociea = true;
		ocra = ocra_val;
	}

	Timer_16bit::Timer_16bit(tccra_r tccra_arg, tccrb_r tccrb_arg, timsk_r timsk_arg, reg_ref& tcnt_arg, reg_ref ocra_arg):
		tccra_u(tccra_arg), tccrb_u(tccrb_arg), timsk_u(timsk_arg),						//map timer register to union-register
		tccra(tccra_u.bitfield), tccrb(tccrb_u.bitfield), timsk(timsk_u.bitfield),		//register bitfields assignment
		tcnt(tcnt_arg), ocra(ocra_arg)													//bind plain registers
	{printf("base t\n\r");};

	void Timer_16bit::start_timer(ClockSelection cs){
		// clear all settings
		tccrb_u = 0;
		tccra_u = 0;
		timsk_u = 0;

		// setup timer
		tccrb.cs = cs;
	}

	/*
	 * Get raw timer value
	 */
	uint16_t Timer_16bit::get(){
		return tcnt;
	}

	/*
	 * Init
	 */
	Timer1::Timer1(): Timer_16bit((tccra_r)TCCR1A, (tccrb_r)TCCR1B, (timsk_r)TIMSK1, (reg_ref)TCNT1, (reg_ref)OCR1A)
	{};

//	/*
//	 * Start/stop timer
//	 */
	Timer1::Timer1(ClockSelection cs): Timer_16bit((tccra_r)TCCR1A, (tccrb_r)TCCR1B, (timsk_r)TIMSK1, (reg_ref)TCNT1, (reg_ref)OCR1A)
	{
		Timer_16bit::start_timer(cs);
		{};
	}
}

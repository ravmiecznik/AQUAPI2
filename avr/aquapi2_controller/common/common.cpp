/*
 * common.cpp
 *
 *  Created on: Mar 28, 2023
 *      Author: rafal
 */

#include <stdint.h>
#include <stdio.h>
#include <assert.h>
#include <avr/delay.h>
#include "common.h"
#include "../usart/usart.h"


void delay_cpu_cycles(uint16_t cycles){
	for(uint16_t i=0; i<cycles; ++i)
		asm volatile ("nop");
}


/*
 * Null function
 */
void null_function(){

}


/*
 * Custom assert function. Assures error message is flushed into stderr.
 * By default use __ASSERT_USE_STDERR macro to enable stderr for assert output but
 * assertion will stop everything including Serial tx interrupt and error message
 * is incomplete.
 */

const char assert_msg_template[] PROGMEM = "assertion in func: %s, file: %s, line: %u, error: %s\n\r";

extern Usart* Serial;
void my__assert(const char *__func, const char *__file, int __lineno, const char *__sexp){
	_delay_ms(2); //must delay until stdout is ready
	fprintf_P(stderr, assert_msg_template , __func, __file, __lineno, __sexp);
	while(Serial->tx_data_pending()); 				//wait for fprintf to finish
	__assert(__func, __file, __lineno, __sexp);		//call real assertion
}


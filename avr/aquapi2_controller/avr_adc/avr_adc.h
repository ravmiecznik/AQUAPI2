/*
 * avr_adc.h
 *
 *  Created on: Mar 27, 2023
 *      Author: rafal
 *
 *
 * Tested on Atmega328P
 */

#ifndef AVR_ADC_AVR_ADC_H_
#define AVR_ADC_AVR_ADC_H_

#include <avr/io.h>
#include <stdarg.h>
#include <stdint.h>
#include <avr/interrupt.h>
#include "../common/common.h"

//TODO: perhaps it may be better to do reinterpret_cast of registers ?
//TODO: admux_s& admux_r = reinterpret_cast<admux_s&>(ADMUX);


/*
 * ADMUX register structure
 */
struct admux_s{
	uint8_t mux: 	4;	// channel selection
	bool: 			1;	// reserved unused field
	bool adlar: 	1;	// ADC left adjustment
	uint8_t refs: 	2;	// select source voltage reference
};


/*
 * PRR – Power Reduction Register Structure
 */
struct prr_s{
	bool pradc: 	1;	// shut down ADC
	bool prusart0: 	1;	// shut down USART
	bool prspi: 	1;	// shut down SPI
	bool prtim1: 	1;	// shut down Timer
	bool : 			1;	// reserved
	bool prtim0: 	1;	// shut down Timer
	bool prtim2: 	1;	// shut down Timer
	bool prtwi: 	1;	// shut down TWI
};



/*
 * ADCSRA – ADC Control and Status Register A
 */
struct adcsra_s{
	uint8_t adps: 	3;	// system clock prescaler selector
	bool adie: 		1;	// enable ADC interrupt
	bool adif: 		1;	// ADC interrupt flag
	bool adate: 	1;	// enable auto trigger of ADC based on ADTS configuration
	bool adsc: 		1;	// start ADC conversion
	bool aden: 		1;	// enable ADC
};


/*
 * ADCSRB – ADC Control and Status Register B
 */
struct adcsrb_s{
	uint8_t adts:	 	3;	// auto-trigger source
	uint8_t :			3;	// reserved
	bool acme:	 		1;	// enable analog comparator
	bool :			 	1;	// reserved
};


/*
 * DIDR0 – Digital Input Disable Register 0
 */

struct didr0_s{
	bool adc0d:		1;
	bool adc1d:		1;
	bool adc2d:		1;
	bool adc3d:		1;
	bool adc4d:		1;
	bool adc5d:		1;
	bool :			1;	// reserved
};



namespace adc
{

	enum class vref: uint8_t {
		aref = 0,
		avcc_ext_cap = 1,
		reserved = 2,
		internal_1_1v = 3
	};


	enum class adts {
		free_running,
		analog_comparator,
		ext_interrupt_req,
		timer0_compA_match,
		timer0_overflow,
		timer1_compB_match,
		timer1_overflow,
		timer1_capture_evnt,
	};

	enum class prescaler: uint8_t {
		div_2 	= 1,
		div_4 	= 2,
		div_8 	= 3,
		div_16 	= 4,
		div_32 	= 5,
		div_64 	= 6,
		div_128	= 7,
	};

	//create register references
	extern admux_s& 	admux;
	extern adcsra_s& 	adcsra;
	extern adcsrb_s& 	adcsrb;
	extern didr0_s&	 	didr0;
	extern volatile uint16_t ADC_results[8];

	struct adc_results_s {
				uint16_t adc0;
				uint16_t adc1;
				uint16_t adc2;
				uint16_t adc3;
				uint16_t adc4;
				uint16_t adc5;
				uint16_t adc6;
				uint16_t adc7;
			};

//	template<typename ISR_ARGS, typename ISR_RETT>
	class Adc
	{
	private:
		static void start_adc(uint8_t);
		static uint8_t didr_old;
		volatile static uint8_t channels_bitmask;
		volatile static uint8_t current_channel;
		volatile static uint16_t* adc_results;
		volatile static uint8_t samples_num;
	public:
		static void adc_on_interrupt(prescaler pre=prescaler::div_128, vref v=vref::avcc_ext_cap, uint8_t samples_num=3);
		static uint16_t get_adc(uint8_t mux, uint16_t samples=1);
		static adc_results_s get_adc_results();
		static adc_results_s* get_adc_resultsp();
		static void enable();
		static void select_channels(uint8_t bitmask);
		static void select_channel(uint8_t chann);
		static void advance_channel();
		volatile static uint8_t get_current_channel() {return current_channel-1;};
		static uint8_t get_active_channels() {return channels_bitmask;};
		volatile static uint8_t get_samples_num() {return samples_num;};
	};

	template<typename FunctionT>
	class AdcHandler: public Adc{

		FunctionT isr_handler;
	public:
		AdcHandler() {};
		AdcHandler(FunctionT fptr): isr_handler(fptr) {};
	};


//	typedef AdcT<void, void> Adc;

}
#endif /* AVR_ADC_AVR_ADC_H_ */

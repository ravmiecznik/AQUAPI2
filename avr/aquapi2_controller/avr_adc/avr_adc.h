/*
 * avr_adc.h
 *
 *  Created on: Mar 27, 2023
 *      Author: rafal
 */

#ifndef AVR_ADC_AVR_ADC_H_
#define AVR_ADC_AVR_ADC_H_

#include <avr/io.h>
#include <stdarg.h>
#include <stdint.h>
#include <avr/interrupt.h>
#include "../common/common.h"


/*
 * PRR – Power Reduction Register
 */
union _prr_reg {
private:
	uint8_t reg;
public:
	struct{
		bool pradc: 	1;	// shut down ADC
		bool prusart0: 	1;	// shut down USART
		bool prspi: 	1;	// shut down SPI
		bool prtim1: 	1;	// shut down Timer
		bool reserved: 	1;
		bool prtim0: 	1;	// shut down Timer
		bool prtim2: 	1;	// shut down Timer
		bool prtwi: 	1;	// shut down TWI
	};
	operator uint8_t(){
		return reg;
	}

	void operator =(uint8_t val){
		reg = val;
	}
};


union _admux_reg {
private:
	uint8_t reg;
public:
	struct{
		uint8_t mux: 	4;	// channel selection
		bool reserved: 	1;
		bool adlar: 	1;	// ADC left adjustment
		uint8_t refs: 	2;	// select source voltage reference
	};
	operator uint8_t(){
		return reg;
	}

	void operator =(uint8_t val){
		reg = val;
	}
};

/*
 * ADCSRA – ADC Control and Status Register A
 */
union _adcsra_reg {
private:
	uint8_t reg;
public:
	struct{
		uint8_t adps: 	3;	// system clock prescaler selector
		bool adie: 		1;	// enable ADC interrupt
		bool adif: 		1;	// ADC interrupt flag
		bool adate: 	1;	// enable auto trigger of ADC based on ADTS configuration
		bool adsc: 		1;	// start ADC conversion
		bool aden: 		1;	// enable ADC
	};
	operator uint8_t(){
		return reg;
	}

	void operator =(uint8_t val){
		reg = val;
	}
};


/*
 * ADCSRB – ADC Control and Status Register B
 */
union _adcsrb_reg {
private:
	uint8_t reg;
public:
	struct{
		uint8_t adts:	 	3;	// auto-trigger source
		uint8_t reserved:	3;
		bool acme:	 		1;	// enable analog comparator
		bool reserved2:	 	1;
	};
	operator uint8_t(){
		return reg;
	}

	void operator =(uint8_t val){
		reg = val;
	}
};



/*
 * DIDR0 – Digital Input Disable Register 0
 */
union _didr0_reg{
private:
	uint8_t reg;
public:
	struct{
		bool adc0d:		1;
		bool adc1d:		1;
		bool adc2d:		1;
		bool adc3d:		1;
		bool adc4d:		1;
		bool adc5d:		1;
		bool reserved2:	1;
	};

	operator uint8_t(){
		return reg;
	}

	void operator =(uint8_t val){
		reg = val;
	}

	void operator|=(uint8_t val){
		reg |= val;
	}
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
	extern _admux_reg& 	admux;
	extern _adcsra_reg& adcsra;
	extern _adcsrb_reg& adcsrb;
	extern _didr0_reg& didr0;
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

}
#endif /* AVR_ADC_AVR_ADC_H_ */

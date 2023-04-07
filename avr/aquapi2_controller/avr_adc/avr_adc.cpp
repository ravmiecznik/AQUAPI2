/*
 * registers.cpp
 *
 *  Created on: Mar 27, 2023
 *      Author: rafal
 */

#include <avr/interrupt.h>
#include <avr/delay.h>
#include <avr/io.h>
#include <stdarg.h>
#include "avr_adc.h"
#include "../common/common.h"

#include <stdio.h>


template<class ADC_interrupt_dtype>
FuncPtr<void(ADC_interrupt_dtype)> ADC_interrupt_handler = nullptr;


namespace adc {
	constexpr static uint8_t CHANNELS_NUM = 8;
	volatile uint16_t ADC_results[CHANNELS_NUM];

	/*
	 * Default ADC interrupt handler
	 */
	volatile static uint8_t current_sample = 0;
	volatile static uint32_t samples_sum = 0;
	ISR(ADC_vect){
		if(current_sample++ < Adc::get_samples_num()){
			while(adcsra.adsc == 1);
			samples_sum += ADC-1;
		}
		else{
			ADC_results[Adc::get_current_channel()] = samples_sum/Adc::get_samples_num();
			Adc::advance_channel();
			current_sample = 0;
			samples_sum = 0;

		}
		adcsra.adie = 1;
		adcsra.adsc = 1;
	}


	_admux_reg& admux = (_admux_reg&)ADMUX;
	_adcsra_reg& adcsra = (_adcsra_reg&)ADCSRA;
	_adcsrb_reg& adcsrb = (_adcsrb_reg&)ADCSRB;
	_didr0_reg& didr0 = (_didr0_reg&)DIDR0;
	_prr_reg& prr = (_prr_reg&)PRR;


	/*
	 */
	void Adc::adc_on_interrupt(prescaler pre, vref v,uint8_t samples_num){
		admux.refs = (uint8_t)v;
		adcsra.adps = (uint8_t)pre;
		adcsra.adie = 1;
		adcsra.adsc = 1;
	}

	/*
	 * Start single ADC conversion
	 */
	void Adc::start_adc(uint8_t mux) {
		admux.mux = mux;
		admux.refs = (uint8_t)vref::avcc_ext_cap;
		adcsra.adsc = 1;
		delay_cpu_cycles(5);
	}

	/*
	 * Start and get single ADC conversion
	 */
	uint16_t Adc::get_adc(uint8_t mux, uint16_t samples) {
		uint8_t didr_old = didr0;
		didr0 = didr0 | (1<<mux);
		uint16_t mean = 0;
		Assert(samples < ( (1<<8*(sizeof(uint16_t) - sizeof(uint8_t))) -1 )); // overflow protection
		for(uint8_t i=0; i<samples; ++i){
			start_adc(mux);
			while(adcsra.adsc == 1);
			didr0 = didr_old;
			mean += ADC;
		}
		Adc::adc_results[mux] = mean;
		return mean/samples;

	}

	/*
	 * Select channels for ADC
	 */
	void Adc::select_channels(uint8_t bitmask){
		didr0 |= bitmask;	// disable digital function of pins ADC5..0
		channels_bitmask |= bitmask;
	}

	/*
	 * Select single channel for ADC
	 */
	void Adc::select_channel(uint8_t chann){
		didr0 |= (1<<chann);
		channels_bitmask |= (1<<chann);
		current_channel = chann;
		DDRC &= ~(1<<chann); 	// should be solved by pull-up resistor
		PORTC |= (1<<chann);		// should be solved by pull-up resistor
	}

	/*
	 * Enable ADC
	 */
	void Adc::enable() {
		adcsra.aden = 1;
		prr.pradc = 0;
	}

	/*
	 * Get adc_results_s struct
	 */
	adc_results_s Adc::get_adc_results(){
		return (adc_results_s&)(*adc_results);
	}

	adc_results_s* Adc::get_adc_resultsp(){
		return (adc_results_s*)(&adc_results);
	}

	void Adc::advance_channel(){
		Assert(Adc::channels_bitmask);	// assert if any channle selected
		while((Adc::channels_bitmask & (1<<current_channel++)) == 0){
			current_channel %= CHANNELS_NUM;
		}
		admux.mux = Adc::get_current_channel();
	}

	volatile uint8_t Adc::channels_bitmask = 0;
	uint8_t Adc::didr_old = 0;
	volatile uint8_t Adc::current_channel = 0;
	volatile uint8_t Adc::samples_num = 1;
	volatile uint16_t* Adc::adc_results = ADC_results;
}


/*
 * atm_timer.h
 *
 *  Created on: Apr 8, 2023
 *      Author: rafal
 */

#ifndef ATM_TIMER_ATM_TIMER16BIT_H_
#define ATM_TIMER_ATM_TIMER16BIT_H_

#include <stdint.h>
#include <avr/io.h>
#include "../common/common.h"

namespace timer {

	/*
	 * Compare Output Mode, no PWM
	 * TODO: not used
	 */
	enum class CompareOutMode_nonPWM {
		normal_pins_disconnected= 	0,
		toggle_on_compare_match= 	1,
		clear_on_compare_match=		2,
		set_on_compare_match=		2,
	};


	/*
	 * Compare Output Mode, Fast PWM
	 * TODO: not used
	 */
	enum class CompareOutMode_fastPWM {
		normal_pins_disconnected= 			0,
		toggle_oc1a=			 			1,  // WGM13:0 = 14 or 15: Toggle OC1A on compare match,
												// OC1B disconnected (normal port operation). For all other WGM1 settings,
												// normal port operation, OC1A/OC1B disconnected.
		clear_on_oc1ab_oncompare_match=		2,  // Clear OC1A/OC1B on compare match, set OC1A/OC1B at BOTTOM (non-inverting mode)
		inverting_mode=						2,  // Set OC1A/OC1B on compare match, clear OC1A/OC1B at BOTTOM (inverting mode)
	};


	/*
	 * Select clock source or clock prescaler (FCPU divider)
	 */
	enum class ClockSelection {
		no_clock,
		clk_d1,
		clk_d8,
		clk_d64,
		clk_d256,
		clk_d1024,
		ext_clock_failing_edge,
		ext_clock_rising_edge,
	};

	/*
	 * Waveform Generation Mode
	 * Combined with the WGM13:2 bits found in the TCCR1B register, these bits control the counting sequence of the counter, the
	 * source for maximum (TOP) counter value, and what type of waveform generation to be used. Modes of
	 * operation supported by the Timer/Counter unit are: Normal mode (counter), clear timer on compare match (CTC) mode, and
	 * three types of pulse width modulation (PWM) modes.
	 *
	 */
	enum class wgm {
		normal,
		pwm_phc_8bit,
		pwm_phc_9bit,
		pwm_phc_10bit,
		ctc_ocr1a,			//clear timer on compare match
		fast_pwm_8bit,
		fast_pwm_9bit,
		fast_pwm_10bit,
		pwm_pfc_icr1,
		pwm_pfc_ocr1a,
		pwm_pc_icr1,
		pwm_pc_ocr1a,
		ctc_icr1,
		reserved,
		fast_pwm_icr1,
		fast_pwm_ocr1a,
	};

	/*
	 * Sub register WGM 1 0
	 * TODO: not used
	 */
	union wgm10 {
	private:
		uint8_t sub_reg: 2;
	public:
		struct {
			bool wgm1: 1;
			bool wgm2: 1;
		};
	};


	/*
	 * Sub register WGM 3 2
	 * TODO: not used
	 */
	union wgm32 {
	private:
		uint8_t sub_reg: 2;
	public:
		struct {
			bool wgm1: 1;
			bool wgm2: 1;
		};
	};

	/*
	 * TCCRA register structure
	 * Timer control register A
	 *
	 */
	struct tccra_s{
		uint8_t wgm_10:		2; // TODO: how to acces lower nibble, bits 1 0 of wgm enum ?
		uint8_t :			2; // reserved
		uint8_t comb: 		2; // Control the output compare pins OCA
		uint8_t coma: 		2; // Control the output compare pins OCB
	};

	/*
	 * TCCRB register structure
	 * Timer control register B
	 *
	 */
	struct tccrb_s{
		ClockSelection cs:	3;
		uint8_t wgm_32:		2;  //TODO: how to acces upper nibble, bits 3 2 of wgm enum ?
		bool :				1;	// reserved
		uint8_t ices:		2;
		uint8_t icnc:		2;
	};

	/*
	 * TIMSK register structure
	 * Timer interrupt maks register
	 *
	 */
	struct timsk_s{
		bool toie: 			1;
		bool ociea:			1;
		bool ocieb: 		1;
		uint8_t:			2;	// reserved
		bool icie1:			1;
		uint8_t:			2;	// reserved
	};


	// clarify types needed
	typedef register_descriptor<tccra_s>& tccra_r;	//reference register type
	typedef register_descriptor<tccrb_s>& tccrb_r;	//reference register type
	typedef register_descriptor<timsk_s>& timsk_r;	//reference register type
	typedef uint16_t& reg_ref;					//register reference


	/*
	 * Abstract Timer class.
	 * All timers should support below operations.
	 */
	class TimerBase{

	};

	/*
	 * Base 16bit Timer
	 */
	class Timer_16bit{
	protected:
		tccra_r tccra_u;	//union access
		tccrb_r tccrb_u;	//union access
		timsk_r timsk_u;	//union access

		/*
		 * Interface to access bitfields of registers
		 */
		tccrb_s& tccrb;
		tccra_s& tccra;
		timsk_s& timsk;
		reg_ref& tcnt;
		reg_ref& ocra;		//otuput compare register A

		// assign registers to timer
		Timer_16bit(tccra_r tccra_arg, tccrb_r tccrb_arg, timsk_r timsk_arg, reg_ref& tcnt_arg, reg_ref ocra_arg);
		void start_timer(ClockSelection cs= ClockSelection::clk_d1);

	public:
		virtual void ocia_int_enable(uint16_t ocra=0);  //TODO: assign ISR handler in int_enable function
		virtual uint16_t get();
	};

	class Timer1: public Timer_16bit{
	public:
		/*
		 * Start timer with clock prescaler = 1 by default
		 */
		using Timer_16bit::Timer_16bit;
		Timer1();
		Timer1(ClockSelection cs= ClockSelection::clk_d1);

		// virtual ~Timer1() {};  // !!! virtual destructor not supported with avr-gcc
	};

}

// useful example
// Access TCNT1 register
// volatile uint16_t& TCNT1 = *(uint16_t*)0x84;


#endif /* ATM_TIMER_ATM_TIMER16BIT_H_ */

/*
 * atm_timer.h
 *
 *  Created on: Apr 8, 2023
 *      Author: rafal
 */

#ifndef ATM_TIMER_ATM_TIMER_H_
#define ATM_TIMER_ATM_TIMER_H_

#include <stdint.h>
#include <avr/io.h>
#include "../common/common.h"

namespace timer {


	enum class CompareOutMode_nonPWM {
		normal_pins_disconnected= 	0,
		toggle_on_compare_match= 	1,
		clear_on_compare_match=		2,
		set_on_compare_match=		2,
	};


	/*
	 * Compare Output Mode, Fast PWM
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
	 * Compare Output Mode, Phase Correct and Phase and Frequency Correct PWM
	 */
	enum class CompareOutMode_phcPWM {
		// to be implemented
	};


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
		uint8_t wgm_10:				2;
		uint8_t reserved:			2;
		uint8_t comb: 		2; //Control the output compare pins OCA
		uint8_t coma: 		2; //Control the output compare pins OCB
	};

	/*
	 * TCCRB register structure
	 * Timer control register B
	 *
	 */
	struct tccrb_s{
		ClockSelection cs:			3;
		uint8_t wgm_32:				2;
		bool reserved:				1;
		uint8_t ices:		 		2;
		uint8_t icnc:		 		2;
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
		uint8_t reserved:	2;
		bool icie1:			1;
		uint8_t reserved2:	2;
	};

	class Timer1{
	private:
		generic_register<tccra_s>& tccra_u		= (generic_register<tccra_s>&)TCCR1A;
		generic_register<tccrb_s>& tccrb_u		= (generic_register<tccrb_s>&)TCCR1B;

		/*
		 * Interface to access bitfields of registers
		 */
		tccrb_s& tccrb 		= tccrb_u.bitfield;
		tccra_s& tccra 		= tccra_u.bitfield;
	public:
		/*
		 * Start timer with clock prescaler = 1 by default
		 */
		Timer1(ClockSelection cs= ClockSelection::clk_d1){
			tccrb_u = 0;		// clear all settings
			tccra_u = 0;		// clear all settings
			tccrb.cs = cs;
			TCNT1 = 0;
		}
	};

}




#endif /* ATM_TIMER_ATM_TIMER_H_ */

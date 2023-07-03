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
#include <avr/interrupt.h>
#include <stdio.h>
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
		ctc_ocr1a,
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
	 * Timer control register A for 8 and 16 bit timers
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
	 * Timer control register B for 8 bit timer
	 *
	 */
	struct tccrb_8bit_s{
		ClockSelection cs:	3;
		uint8_t wgm_2:		1;  //TODO: how to acces upper nibble, bits 3 2 of wgm enum ?
		bool :				2;	// reserved
		uint8_t focob:		1;	// force output compare A
		uint8_t focoa:		1;	// force output compare B
	};

	/*
	 * TCCRB register structure
	 * Timer control register B for 16 bit timer
	 *
	 */
	struct tccrb_16bit_s{
		ClockSelection cs:	3;
		uint8_t wgm_32:		2;  //TODO: how to acces upper nibble, bits 3 2 of wgm enum ?
		bool :				1;	// reserved
		uint8_t ices:		2;
		uint8_t icnc:		2;
	};

	/*
	 * TIMSK register structure
	 * Timer interrupt mask register for 8 bit timer
	 *
	 */
	struct timsk_8bit_s{
		bool toie: 			1;
		bool ociea:			1;
		bool ocieb: 		1;
		uint8_t:			2;	// reserved
		bool icie1:			1;
		uint8_t:			2;	// reserved
	};

	/*
	 * TIMSK register structure
	 * Timer interrupt mask register for 16 bit timer
	 *
	 */
	struct timsk_16bit_s{
		bool toie: 			1;
		bool ociea:			1;
		bool ocieb: 		1;
		uint8_t:			2;	// reserved
		bool icie1:			1;
		uint8_t:			2;	// reserved
	};


	template<typename T>
	uint16_t tcnt_to_ms(T tcnt, uint16_t prescaler){
		uint32_t ticks = tcnt;
		ticks *= prescaler;
		ticks = ticks/(F_CPU/1000);  			//same as 1000*ticks/F_CPU, having F_CPU/1000 avoids type truncation
		return static_cast<uint16_t>(ticks);
	}

	/*
	 * Time representation struct
	 */
	struct Time{
		uint16_t hours = 0;
		uint8_t minutes = 0;
		uint8_t seconds = 0;
		uint16_t milisecond = 0;

		Time(uint8_t h, uint8_t m, uint8_t s, uint16_t ms): hours(h), minutes(m), seconds(s), milisecond(ms) {};
		Time(uint64_t timestamp) {
			milisecond = timestamp % 1000;
			timestamp /= 1000;
			seconds = timestamp % 60;
			timestamp /= 60;
			minutes = timestamp % 60;
			timestamp /= 60;
			hours = timestamp;
		};

		template<typename T>
		void operator++(T ms){
			//not implemented
		};

		template<typename T>
		Time& operator+=(T ms){
			milisecond += ms;
			seconds += milisecond/1000;
			milisecond %= 1000;

			minutes += seconds/60;
			seconds %= 60;

			hours += minutes/60;
			minutes %= 60;

			return *this;
		}

		template<typename T>
		T to_ms(){
			T miliseconds = 1000*(static_cast<T>(hours)*60*60 + static_cast<T>(minutes)*60 + static_cast<T>(seconds)) + milisecond;
			return miliseconds;
		}

		~Time(){};
	};


	/*
	 * Abstract Timer class.
	 * All timers should support below operations.
	 */
	template<typename TimerType, typename tccrbRegVariantStruct, typename timskRegVariantStruct> // uint8_t or uint16_t
	class TimerBase{
	private:
		using reg_ref = volatile uint8_t&;
		using tccrb_register_d = register_descriptor<tccrbRegVariantStruct>;
		using tccra_register_d = register_descriptor<tccra_s>;
		using timsk_register_d = register_descriptor<timskRegVariantStruct>;



		volatile TimerType& tcnt;

		tccra_register_d& tccra_rd;
		tccra_s& tccra = tccra_rd.bitfield;

		tccrb_register_d& tccrb_rd;
		timsk_register_d& timsk_rd;

	protected:
		using toi_handler_ptr = void(*)(TimerBase<TimerType, tccrbRegVariantStruct, timskRegVariantStruct>*);
		tccrbRegVariantStruct& tccrb = tccrb_rd.bitfield;
		timskRegVariantStruct& timsk = timsk_rd.bitfield;



	public:
		uint16_t prescaler;
		TimerBase(ClockSelection cs,
				volatile TimerType& tcnt, reg_ref tccra, reg_ref tccrb, reg_ref timsk):
			tcnt(tcnt),
			tccra_rd((tccra_register_d&)tccra),
			tccrb_rd((tccrb_register_d&)tccrb),
			timsk_rd((timsk_register_d&)timsk)
			{

			switch (cs) {
				case ClockSelection::clk_d1:
					prescaler = 1;
					break;
				case ClockSelection::clk_d8:
					prescaler = 8;
					break;
				case ClockSelection::clk_d64:
					prescaler = 64;
					break;
				case ClockSelection::clk_d256:
					prescaler = 256;
					break;
				case ClockSelection::clk_d1024:
					prescaler = 1024;
					break;
				default:
					Assert(false); //can't map clock source to prescaler
					break;
			}
		}


		/*
		 * Convert raw TCNT value to ms
		 */
		uint16_t to_ms(uint32_t tcnt){
			return tcnt_to_ms(tcnt, prescaler);
		}


		/*
		 * Get raw time
		 */
		uint16_t get(){
			return tcnt;
		}


		virtual ~TimerBase(){};
	};


	class Timer1: public TimerBase<uint16_t, tccrb_16bit_s, timsk_16bit_s>{
	public:
		static uint32_t toi_counter;
		static uint16_t prescaler_s;
		Timer1(ClockSelection cs):
			TimerBase(cs, TCNT1, TCCR1A, TCCR1B, TIMSK1)
		{
			tccrb.cs = cs;
			timsk.toie = 1;
			prescaler_s = prescaler;
		};

		Time get_time(Time add_Time = 0){
			uint32_t single_toi_time_ms = to_ms(0x10000);
			auto additional_time = add_Time.to_ms<uint32_t>();
			return Time(single_toi_time_ms*toi_counter + additional_time);
		}

		virtual ~Timer1(){};

	};


}


#endif /* ATM_TIMER_ATM_TIMER16BIT_H_ */

/*
 * common.h
 *
 *  Created on: Mar 28, 2023
 *      Author: rafal
 */

#ifndef COMMON_COMMON_H_
#define COMMON_COMMON_H_


//typedef void (*func_ptr)();


template<typename Func>
using FuncPtr = Func*;

extern FuncPtr<void()> null_function;

void delay_cpu_cycles(uint16_t c);

void my__assert(const char *__func, const char *__file, int __lineno, const char *__sexp);
#      define Assert(e)	((e) ? (void)0 : my__assert(__func__, __FILE__, __LINE__, #e))



/*
 * Generic register.
 * Allows access of bitfields of register.
 *
 * Example:
 *
  struct admux_s{
	 uint8_t mux: 	4;	// channel selection
	 bool reserved: 	1;
	 bool adlar: 	1;	// ADC left adjustment
	 uint8_t refs: 	2;	// select source voltage reference
  };

  generic_register<admux_s>& admux_u		= (generic_register<admux_s>&)ADMUX;
 */
template<typename S>
union generic_register{
private:
	uint8_t reg;
public:
	S bitfield;
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


#endif /* COMMON_COMMON_H_ */

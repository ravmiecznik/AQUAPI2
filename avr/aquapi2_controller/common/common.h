/*
 * common.h
 *
 *  Created on: Mar 28, 2023
 *      Author: rafal
 */

#ifndef COMMON_COMMON_H_
#define COMMON_COMMON_H_

#include <avr/pgmspace.h>

/*
 * Macro to print a string which is automatically stored in PGMSPACE
 */
#define PRINTFP_V(str, ...) printf_P(PSTR(str),__VA_ARGS__)

/*
 * Macro to print a string with variadic args which is automatically stored in PGMSPACE
 */
#define PRINTFP(str) printf_P(PSTR(str))


template<typename Func>
using FunctionPtr = Func*;


void delay_cpu_cycles(uint16_t c);

void my__assert(const char *__func, const char *__file, int __lineno, const char *__sexp);
#      define Assert(e)	((e) ? (void)0 : my__assert(__func__, __FILE__, __LINE__, #e))



/*
 * Register descriptor.
 * Allows RW access of bitfields of register.
 * Supports assign and logical operations.
 * e.g.
 * register_descriptor<admux_s>& admux_u		= (register_descriptor<admux_s>&)ADMUX;
 */
template<typename RegStruct>
union register_descriptor{
private:
	uint8_t reg;
public:
	/*
	 * Register bits
	 */
	RegStruct bitfield;

	/*
	 * Operations on register
	 */
	operator uint8_t(){
		return reg;
	}

	void operator =(uint8_t val){
		reg = val;
	}

	void operator|=(uint8_t val){
		reg |= val;
	}

	void set_bit(uint8_t bit){
		reg |= (1<<bit);
	}
};

union bitfield8{
private:
	uint8_t byte=0;
public:
	struct{
		bool b0: 1;
		bool b1: 1;
		bool b2: 1;
		bool b3: 1;
		bool b4: 1;
		bool b5: 1;
		bool b6: 1;
		bool b7: 1;
	};
	operator uint8_t(){
		return byte;
	}
};


/*
 * Cast AVR register to register_descriptor.
 * Naked cast should be safe if used only on AVR 8bit uController.
 */
template<typename RegStruct>
register_descriptor<RegStruct>& to_register_descriptor(volatile uint8_t& reg){
	return (register_descriptor<RegStruct>&)reg;
}



/*
 * function pointer type
 */
typedef void (*fptr)(void);

/*
 * Null function
 */
void null_function();

template<typename InT, typename RetT>
RetT null_function_template(InT){

}

template<class ArgsType, class RetType=void>
class ISRFunctor{
private:
	FunctionPtr<RetType(ArgsType)> fptr = null_function;
	RetType result;
public:
	ISRFunctor(FunctionPtr<RetType(ArgsType)> f): fptr(f) {};
	ISRFunctor& operator ()(const ArgsType args) {
		result = fptr(args);
		return *this;
	}
	RetType get_result(){
		return result;
	}
};

#endif /* COMMON_COMMON_H_ */

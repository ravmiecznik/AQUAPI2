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
};


/*
 * Cast AVR register to register_descriptor.
 * Brute cast should be safe if used only on AVR 8bit uController.
 */
template<typename RegStruct>
register_descriptor<RegStruct>& to_register_descriptor(volatile uint8_t& reg){
	return (register_descriptor<RegStruct>&)reg;
}


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

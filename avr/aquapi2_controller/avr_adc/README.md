### How to enable ADC
```C++
int main(void)
{
	Usart serial(get_usart_config());
	Serial = &serial;
	setup_stdout_for_printf();
	sei();

	{//auto remove temp variables in this scope

		bitfield8 adc_channels_ena;
		adc_channels_ena.b0 = 1;
		adc_channels_ena.b2 = 1;
        adc_channels_ena.b7 = 1;
		uint8_t samples_num = 3;
		Adc::enable_interrupt(adc_channels_ena, prescaler::div_128, vref::avcc_ext_cap, samples_num);
	}

	adc_results_s adc_results;
    while (true)
    {

    	Screen::clear();    //works when SCREEN is used on Linux
    	Screen::nl(20);
    	adc_results = Adc::get_adc_results();
    	printf("ADC1: %u\n\r", adc_results.adc0);
    	printf("ADC1: %u\n\r", adc_results.adc1);
    	printf("ADC2: %u\n\r", adc_results.adc2);
    	printf("ADC3: %u\n\r", adc_results.adc3);
    	printf("ADC4: %u\n\r", adc_results.adc4);
    	printf("ADC5: %u\n\r", adc_results.adc5);
    	printf("ADC6: %u\n\r", adc_results.adc6);
    	printf("ADC7: %u\n\r", adc_results.adc7);
    	printf("---------------------\n\r");

    	_delay_ms(500);
    }
}
```

### output 

```
---------------------
ADC1: 472
ADC1: 0
ADC2: 644
ADC3: 0
ADC4: 0
ADC5: 0
ADC6: 0
ADC7: 640
---------------------

```
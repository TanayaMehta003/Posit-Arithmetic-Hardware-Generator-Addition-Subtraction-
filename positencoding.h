#ifndef POSIT_ENCODING_H
#define POSIT_ENCODING_H

#include "ap_int.h"
#include "hls_math.h" 

#define ES1 2  
#define ES2 2  
#define MANTISSA_SIZE 28 


typedef ap_uint<ES1> ap_exponent;
typedef ap_uint<MANTISSA_SIZE> ap_mantissa;



ap_uint<32> decoder(ap_uint<32> num1, ap_uint<32> num2) ;
ap_uint<1> find_carry(ap_uint<1> a1, ap_uint<1> b1, ap_uint<1> cin);
ap_uint<1> find_sum(ap_uint<1> a1, ap_uint<1> b1, ap_uint<1> cin);


#endif 

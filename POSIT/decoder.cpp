#include "ap_int.h"
#include "positencoding.h"
#include "hls_math.h"
#include<stdio.h>
#include <sstream>
#include <bitset>
#include <iostream>


#define ES1 2
#define ES2 2
#define MANTISSA_SIZE 28


typedef ap_uint<ES1> ap_exponent;
typedef ap_uint<MANTISSA_SIZE> ap_mantissa;


ap_uint<1> find_sum(ap_uint<1> a1, ap_uint<1> b1, ap_uint<1> cin){
    return  a1 ^ b1 ^ cin;

}
ap_uint<1> find_carry(ap_uint<1> a1, ap_uint<1> b1, ap_uint<1> cin){

    return (a1 & b1) | (b1 & cin) | (a1 & cin);
}


ap_uint<32> decoder(ap_uint<32> num1, ap_uint<32> num2) {

#pragma HLS INTERFACE ap_ctrl_none port=return


  ap_uint<32> num1_arr = num1;
  int i = 0;
  /*num1 array decoding*/
  int cnt1 = 0;

  int in_1 = 0;
  decoder_label0:for (in_1 = 30; in_1 >= 0; in_1--) {
#pragma HLS LOOP_TRIPCOUNT min = 4 max = 499
    if (num1_arr[in_1] == num1_arr[30]) {
      cnt1++;
    } else {
      //all_zeros = false;
      break;
    }
  }

  int k1=0;
  if (num1_arr[30] == 0) {
    k1 = -1*cnt1;
  } else {
    k1 = cnt1 - 1;
  }


  i = in_1;

  ap_exponent expo1 = num1_arr(i - 1, i-2);
  i -= ES1 + 1;


  ap_mantissa mant1 = 0;
  //int z = i;
  mant1.range(27, 27-i)= num1_arr(i , 0);

  /*std::cout<<" k1 =  "<<k1<<" i1 "<<i<<std::endl;
  std::cout << "mant1 " << std::bitset<28>(mant1) << std::endl;*/

  /* num2 array decoding*/
    ap_uint<32> num2_arr = num2;
    int i2 = 0;

    int cnt2 = 0;

    int in_2 = 0;
    decoder_label1:for (in_2 = 30; in_2 >= 0; in_2--) {
#pragma HLS LOOP_TRIPCOUNT min = 4 max = 499
      if (num2_arr[in_2] == num2_arr[30]) {
        cnt2++;
      } else {
        //all_zeros = false;
        break;
      }
    }

    int k2=0;
    if (num2_arr[30] == 0) {
      k2 = -1*cnt2;
    } else {
      k2 = cnt2 - 1;
    }


    i2 = in_2;

    ap_exponent expo2 = num2_arr(i2 - 1, i2-2);
    i2 -= ES2 + 1;
    //std::cout<<" k1 =  "<<k2<<" i2 "<<i2<<std::endl;

    ap_mantissa mant2 = 0;
    mant2.range(27, 27-i2)= num2_arr(i2 , 0);

    //std::cout << "mant2 " << std::bitset<28>(mant2) << std::endl;


    int exponent1 = 0;
    int exponent2 = 0;

    decoder_label2:for(int y = 0; y<2 ; y++){
#pragma HLS LOOP_TRIPCOUNT min = 4 max = 499
        exponent1 += expo1[y]*(pow(2,y));
    }

    decoder_label3:for(int y = 0; y<2 ; y++){
#pragma HLS LOOP_TRIPCOUNT min = 4 max = 499
        exponent2 += expo2[y]*(pow(2,y));
    }




    int exp=0;
    int exp1_conv = (pow(2, ES1)*k1) + exponent1;
    int exp2_conv = (pow(2,ES2)*k2) + exponent2;
    int diff = abs(exp1_conv - exp2_conv);
    int exp_final =0;
    //std::cout<<diff<<std::endl;
    ap_uint<29> mant1_new=0, mant2_new=0;
    mant1_new.bit(28) = 1;
    mant2_new.bit(28) = 1;
    int k = 27;

    decoder_label4:for(int j = 27; j  >= 0 && k >= 0 ; j--){
#pragma HLS LOOP_TRIPCOUNT min = 4 max = 499
        mant1_new.bit(j) = mant1[k];
        mant2_new.bit(j) = mant2[k];
        k--;
    }

    ap_uint<29> mant1_new_new = 0, mant2_new_new = 0;

    ap_uint<29> mant1_final = 0, mant2_final = 0;
    ap_uint<2> exponent_arr=0;

    if (exp1_conv > exp2_conv) {

        diff = exp1_conv - exp2_conv;

        int l = 28;

        decoder_label5:for(int j = 28-diff; j >= 0 && l >= 0; j--){
            mant2_new_new.bit(j) = mant2_new[l];
            l--;
        }
        /*std::cout<<"condition1"<<std::endl;
        std::cout << "mant2_new_new " << std::bitset<29>(mant2_new_new) << std::endl;*/


        decoder_label6:for(int j = 0; j  <= 28 ; j++){
            mant1_final.bit(j) = mant1_new[j];
            mant2_final.bit(j) = mant2_new_new[j];

        }

        exponent_arr=expo1;
        /*std::cout << "mant1_final " << std::bitset<29>(mant1_final) << std::endl;
        std::cout << "mant2_final " << std::bitset<29>(mant2_final) << std::endl;*/


        exp = exponent1;
        exp_final = exp1_conv;

    } else if (exp2_conv > exp1_conv) {

        diff = exp2_conv - exp1_conv;

        int l = 28;
        decoder_label7:for(int j = 28-diff; j >= 0 && l >= 0; j--){
            mant1_new_new.bit(j) = mant1_new[l];
            l--;
        }
        /*std::cout << "mant1_new_new " << std::bitset<29>(mant1_new_new) << std::endl;
        std::cout << "mant1_new " << std::bitset<29>(mant1_new) << std::endl;*/



        decoder_label8:for(int j = 0; j  <= 28 ; j++){
            mant1_final.bit(j) = mant1_new_new[j];
            mant2_final.bit(j) = mant2_new[j];

        }
        exponent_arr = expo2;

        /*std::cout<<"condition2"<<std::endl;
        std::cout << "mant1_final " << std::bitset<29>(mant1_final) << std::endl;
        std::cout << "mant2_final " << std::bitset<29>(mant2_final) << std::endl;*/



        exp = exponent2;
        exp_final = exp2_conv;
    } else {

        decoder_label9:for(int j = 0; j  <= 28 ; j++){
            mant1_final.bit(j) = mant1_new[j];
            mant2_final.bit(j) = mant2_new[j];



        }



        if(exponent1 > exponent2){
            	exponent_arr = expo1;
            }
            else{
            	exponent_arr = expo2;
            }



        exp_final = hls::max(exp1_conv, exp2_conv);

    }


    /*std::cout << "mant2_final " << std::bitset<29>(mant1_final) << std::endl;
    std::cout << "mant2_final " << std::bitset<29>(mant2_final) << std::endl;*/



    ap_uint<1> carry =0;
    ap_uint<29> sum=0;
    ap_uint<1> sum_1bit=0;
    ap_uint<1> flag = 0;


    decoder_label10:for (int j = 0; j <= 28; j++) {
#pragma HLS LOOP_TRIPCOUNT min = 4 max = 499
        sum_1bit = find_sum(mant1_final[j], mant2_final[j], carry);
        sum.bit(j) = sum_1bit;
        carry = find_carry(mant1_final[j], mant2_final[j], carry);

    }
    if (carry == 1) {
        flag = 1;
        exp_final++;
    }

   /* std::cout << "sum " << std::bitset<29>(sum) << std::endl;
    std::cout<<" carry "<<carry<<std::endl;*/

    int k_final = hls::max(k1, k2);




    ap_uint<32> final_result=0;
    final_result[0] = 0;

    /*if(exponent1 > exponent2){
    	exponent_arr = expo1;
    }
    else{
    	exponent_arr = expo2;
    }*/

    //std::cout << "exponent_arr " << std::bitset<2>(exponent_arr) << std::endl;



    ap_uint<32> result = 0;
    if (k_final < 0) {
          decoder_label11:for (int j = 0; j < -k_final; j++) {
            result.bit(30 - j) = 0;
          }
        } else {
      	 k_final = k_final+1;
          decoder_label12:for (int j = 0; j < k_final; j++) {
        	  result.bit(30 - j) = 1;
          }
        }


        int opposite_bit_index_final = 30 - abs(k_final);
        result[opposite_bit_index_final] = !result[30];


        int exponent_start_final = 30 - abs(k_final) - 1;
        int mantissa_start_final = exponent_start_final - ES2;



        result(exponent_start_final, exponent_start_final - ES2 + 1) = exponent_arr;



        if(flag == 1){
        	int p=28;
        	decoder_label13:for(int j = mantissa_start_final; j >= 0 && p>=0; j--){
        		result.bit(j) = sum[p];
        		p--;
        	}

        }
        else{
            sum = sum<<1;
            int p = 28;
            decoder_label14:for(int j = mantissa_start_final; j >= 0 && p>=0; j--){
            	result.bit(j) = sum[p];
                p--;
            }
        }

  return result;
}

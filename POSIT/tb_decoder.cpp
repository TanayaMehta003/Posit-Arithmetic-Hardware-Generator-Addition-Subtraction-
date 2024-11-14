#include "ap_int.h"
#include "hls_math.h" // For pow function
#include <iostream>
#include "positencoding.h"
#include <bitset>
#include <sstream>

// Define posit parameters
#define ES1 2  // Exponent size (should be 2 for posit format)
#define ES2 2  // Exponent size
#define MANTISSA_SIZE 28 // Mantissa size

// Define posit types
typedef ap_uint<ES1> ap_exponent;
typedef ap_uint<MANTISSA_SIZE> ap_mantissa;

// Function to extract posit components and concatenate them


// Test Bench

 // Include for binary printing

int main() {
  //ap_uint<32> num1 = 0x1BCDEF01; // Example posit value


    // Convert the binary string to an ap_uint<32>
  ap_uint<32> num1 = 0x11210006;
  ap_uint<32> num2 = 0x11111110;
  std::cout << "Original posit (binary): " << std::bitset<32>(num1) << std::endl;
  std::cout << "Original posit (binary): " << std::bitset<32>(num2) << std::endl;
  ap_uint<32> decoded_num1 = decoder(num1, num2);

  std::cout << "Decoded posit (binary): " << std::bitset<32>(decoded_num1) << std::endl;

  return 0;
}

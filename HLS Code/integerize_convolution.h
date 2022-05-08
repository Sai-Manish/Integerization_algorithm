#ifndef __CONVOLUTION_INTEGERIZATION_H__

#define __CONVOLUTION_INTEGERIZATION_H__

#include <stdio.h>
#include <stdlib.h>
#include <cmath>
#include <iostream>
#include <cstdlib>
#include <algorithm>
//#include <string>
#include <vector>
#include <ap_int.h>
//#include <hls_opencv.h>

typedef ap_uint<1> uint1_t;
typedef ap_uint<2> uint2_t;
typedef ap_uint<3> uint3_t;
typedef ap_uint<4> uint4_t;
//typedef ap_uint<8> uint8_t;

typedef ap_int<1> int1_t;
typedef ap_int<2> int2_t;
typedef ap_int<3> int3_t;
typedef ap_int<4> int4_t;
typedef ap_int<11> int11_t;
//typedef ap_int<8> int8_t;

// Ignore warnings about deprecated declarations.
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
using namespace std;

int top_module(unsigned char (&output)[124][124], unsigned char (&input)[128][128], int4_t (&kernel)[5][5], float alpha_kernel);
#endif

// System includes
/*#include <iostream>
//#include <string>
//#include <sstream>
//#include <fstream>
#include <algorithm>
//#include <vector>
#include <random>
#include <ap_int.h>

typedef ap_uint<1> uint1_t;
typedef ap_uint<2> uint2_t;
typedef ap_uint<3> uint3_t;
typedef ap_uint<4> uint4_t;
//typedef ap_uint<8> uint8_t;
typedef ap_int<11> int11_t;
typedef ap_int<4> int4_t;

*/

#include"integerize_convolution.h"
#include <random>


// using-declarations
using G = std::mt19937; //mersenne_twister_engine for random numbers
using D = std::uniform_int_distribution<>; // Distribution range (inclusive)
// Convolution function dealing with dynamically allocated 2D arrays.
using namespace std;
using namespace cv;

//int top_module(float (&output)[510][510], uint8_t (&input)[512][512], int4_t (&kernel)[3][3], float (&alpha_kernel));

//void top_module(float (&output)[510][510], uint8_t (&input)[512][512], int4_t (&kernel)[3][3], float (&alpha_kernel));

int main(int argc, char **argv)
{

	Mat in_img = imread("test_image.png",CV_LOAD_IMAGE_GRAYSCALE);

    // For randomly generating numbers.
    G g;
    g.seed(random_device()());
    D d(0, 255); // Random number in range.
    int4_t kernel[5][5] = {{0,1,1,1,0}, {1,4,5,4,1},{1,5,8,5,1},{1,4,5,4,1},{0,1,1,1,0}};
    float alpha = 0.0176;

    unsigned char matrixIn[512][512];

    for(int i = 0; i < 512; i++)
    {
        for(int j = 0; j < 512; j++)
            matrixIn[i][j] = d(g);
    }

    unsigned char output[510][510];
    //Mat output = Mat::zeros(510,510,CV_8UC1);
    /*for(int i = 0; i < 510; i++)
        output[i][i] = 0;*/
    
    #ifdef HW_COSIM
    top_module(output, matrixIn, kernel,alpha);
    #endif

    //Mat output = Mat::zeros(510,510,CV_8UC1);
    //out  = output;

    //namedWindow("test");
    //imshow("test",output);

    //imwrite("output.png", out);

    printf(".......................Done calling convolution...................");

    return 0;
}

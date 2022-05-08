#include <hls_video.h>
#include <stdint.h>
#include <ap_int.h>
typedef ap_int<4> int4_t;
typedef ap_int<12> int12_t;

void conv(uint8_t* image_in,uint8_t* image_out){

   /*float coefficients[3][3] = { {1/9,1/9,1/9},
                                     { 1/9, 1/9, 1/9},
                                     { 1/9, 1/9, 1/9} };*/

   const char coefficients[3][3] = { {1,0,0},
   									  {1,-3,1},
   									  {0,-1,0}};
   	hls::Mat<512,512,HLS_8UC1> src;
   	hls::Mat<512,512,HLS_8UC1> dst;
   	hls::AXIM2Mat<512,uint8_t,512,512,HLS_8UC1>(image_in,src);

   	hls::Window<3,3,char> kernel;
   	for (int i=0;i<3;i++){
   		for (int j=0;j<3;j++){
   			kernel.val[i][j]=coefficients[i][j];
   		}
   	}

   	hls::Point_<int> anchor = hls::Point_<int>(-1,-1);

   	hls::Filter2D(src,dst,kernel,anchor);

   	hls::Mat2AXIM<512,uint8_t,512,512,HLS_8UC1>(dst,image_out);
}

void convolve(unsigned char (&output)[512][512], unsigned char (&input)[512][512], int4_t (&kernel)[3][3], float alpha_kernel)
{

    int convolute = 0; // This holds the convolution results for an index.
    int x, y; // Used for input matrix index
    int i,j;

	// Fill output matrix: rows and columns are i and j respectively
	for (i = 0; i < 510; i++)
	{
//#pragma HLS PIPELINE
		for (j = 0; j < 510; j++)
		{

			x = i;
			y = j;

			// Kernel rows and columns are k and l respectively
			for (int k = 0; k < 3; k++)
			{
				for (int l = 0; l < 3; l++)
				{
					// Convolute here.

					convolute += kernel[k][l] * input[x][y];
					y++; // Move right.
				}
				x++; // Move down.
				y = j; // Restart column position
			}
			output[i][j] = alpha_kernel * convolute; // Add result to output matrix.
			convolute = 0; // Needed before we move on to the next index.
		}
	}

}


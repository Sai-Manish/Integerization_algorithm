#include"integerize_convolution.h"

int top_module(unsigned char (&output)[124][124], unsigned char (&input)[128][128], int4_t (&kernel)[5][5], float alpha_kernel)
{
    
    int convolute = 0; // This holds the convolution results for an index.
    int x, y; // Used for input matrix index
    int i,j;

	// Fill output matrix: rows and columns are i and j respectively
	for (i = 0; i < 124; i++)
	{
		for (j = 0; j < 124; j++)
		{
//#pragma HLS PIPELINE
			x = i;
			y = j;

			// Kernel rows and columns are k and l respectively
			for (int k = 0; k < 5; k++)
			{
				for (int l = 0; l < 5; l++)
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

    return 0;
}



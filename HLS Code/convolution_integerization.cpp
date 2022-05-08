#include"convolution_integerization.h"

int top_module(float output[510][510], uint8_t input[512][512], float kernel[3][3])
{
    int2_t i_kernel[3][3];
    //Integerize(kernel, 3, 3,i_kernel);

    float max_element = INT_MIN;
    int i,j;
    // checking each element of matrix
    // if it is greater than maxElement,
    // update maxElement
    for (i = 0; i < 3; i++) {
         for (j = 0; j < 3; j++) {

             if (abs(kernel[i][j]) > max_element) {
                max_element = abs(kernel[i][j]);
            }
        }
    }

    for (i = 0; i < 3; i++){
        for (j = 0; j < 3; j++){
             /* code */
            i_kernel[i][j] = roundNo(((kernel[i][j])/(max_element))* pow(2,3));
        }
    }

    float alpha_kernel = (max_element/pow(2,3));

    //int11_t output_1[510][510];

    //convolute_integerize(output_1,input,i_kernel);

    int convolute = 0; // This holds the convolution results for an index.
    int x, y; // Used for input matrix index

	// Fill output matrix: rows and columns are i and j respectively
	for (i = 0; i < 510; i++)
	{
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
					convolute += i_kernel[k][l] * input[x][y];
					y++; // Move right.
				}
				x++; // Move down.
				y = j; // Restart column position
			}
			output[i][j] = alpha_kernel * convolute; // Add result to output matrix.
			convolute = 0; // Needed before we move on to the next index.
		}
	}

    /*for (i = 0; i < 510; i++)
    {
        for (j = 0; i < 510; i++)
        {
            output[i][j] = alpha_kernel * output_1[i][j];
        }
        
    }*/
    return 0;
}

int2_t roundNo(float num)
{
	return num < 0 ? num - 0.5 : num + 0.5;
}


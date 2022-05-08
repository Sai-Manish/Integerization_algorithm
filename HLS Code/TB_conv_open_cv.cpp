#include <hls_opencv.h>
#include <stdint.h>
#include <stdio.h>
#include <ap_int.h>
typedef ap_int<4> int4_t;
typedef ap_int<12> int12_t;
using namespace cv;
void conv(uint8_t * image_in, uint8_t * image_out);
int main(){
   Mat im = imread("test_image.png",CV_LOAD_IMAGE_GRAYSCALE);
   uint8_t image_in[512*512];
   uint8_t image_out[512*512];

   memcpy(image_in,im.data,sizeof(uint8_t)*512*512);

   conv(image_in,image_out);

   Mat out = Mat(512,512,CV_8UC1,image_out);
   namedWindow("test");
   imshow("test",out);
   imwrite("test_image_grey.png",out);
   waitKey(0);

 return 0;
}

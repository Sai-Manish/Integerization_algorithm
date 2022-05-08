% MATLAB code for 
% Edge detection using Laplacian Filter.
k=imread("test_image.png");

imtool(k);
  
% Define the Laplacian filter.
kernal_sharpening=[0 -0.5 0; -0.5 3 -0.5; 0 -0.5 0];

[i_kernal_sharpening,alpha_kernal_sharpening] = integerize(kernal_sharpening);  

% Convolve the image using gaussian blur kernal
k2=convn(k, kernal_sharpening, 'same');
k3 = uint8(abs(k2));
% Display the image.
imtool(k3);
%image(k3)

k4=convn(k, (i_kernal_sharpening), 'same');
k5_with_integerize = (k4 .* alpha_kernal_sharpening);
k5 = uint8(abs(k5_with_integerize));
% Display the image.
imtool(k5);

peaksnr = psnr(k5,k3);

function [iarr,alpha] = integerize(arr)
    max_element = max(abs(arr),[],'all');
    iarr = int8(round((arr/max_element)*power(2,7)));
    alpha = (max_element/power(2,7));

end
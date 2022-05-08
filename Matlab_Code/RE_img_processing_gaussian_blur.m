
% MATLAB code for 
% Edge detection using Laplacian Filter.
k=imread("test_image.png");

imtool(k);
  
% Define the Laplacian filter.
kernal_gaussian_blur=[0.0039 0.0156 0.0234 0.0156 0.0039; 0.0156 0.0625 0.0937 0.0625 0.0156; 0.0234 0.0937 0.1406 0.0937 0.0234; 0.0156 0.0625 0.0937 0.0625 0.0156; 0.0039 0.0156 0.0234 0.0156 0.0039];

[i_kernal_gaussian_blur,alpha_kernal_gaussian_blur] = integerize(kernal_gaussian_blur);  

% Convolve the image using gaussian blur kernal
k2=convn(k, kernal_gaussian_blur, 'same');
k3 = uint8(abs(k2));
% Display the image.
imtool(k3);
%image(k3)

k4=convn(k, (i_kernal_gaussian_blur), 'same');
k5_with_integerize = (k4 .* alpha_kernal_gaussian_blur);
k5 = uint8(abs(k5_with_integerize));
% Display the image.
imtool(k5);

peaksnr = psnr(k5,k3);

function [iarr,alpha] = integerize(arr)
    max_element = max(abs(arr),[],'all');
    iarr = int8(round((arr/max_element)*power(2,7)));
    alpha = (max_element/power(2,7));

end
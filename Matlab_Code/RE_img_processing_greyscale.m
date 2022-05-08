
% MATLAB code for 
% Edge detection using Laplacian Filter.
k=imread("test_image.png");


% Convert rgb image to grayscale.
k1=rgb2gray(k);
%csvwrite("test_image_grey.csv", reshape(k, size(k,1),[]));
writematrix(k1,'test_image_grey.csv')
imtool(k1);
%%  
% Convert into double format.
%k1=double(k1);
  
% Define the Laplacian filter.
kernal_box_blur=[0.111 0.111 0.111; 0.111 0.111 0.111; 0.111 0.111 0.111];
[i_kernal_box_blur,alpha_kernal_box_blur] = integerize(kernal_box_blur);  
% Convolve the image using Laplacian Filter
k2=convn(k1, kernal_box_blur, 'same');
k3 = uint8(abs(k2));
% Display the image.
imtool(k3);
%image(k3)

k4=convn(k1, (i_kernal_box_blur), 'same');
k5_with_integerize = (k4 .* alpha_kernal_box_blur);
% Display the image.
k5 = uint8(abs(k5_with_integerize));
imtool(k5);

ssim_val = ssim(k5,k3);
peaksnr = psnr(k5,k3);

function [iarr,alpha] = integerize(arr)
    max_element = max(abs(arr),[],'all');
    disp(max_element);
    iarr = int8(round((arr/max_element)*power(2,0)));
    alpha = (max_element/power(2,0));
    disp(alpha);

end
I = zeros(512); %Creating a black image
I(236:276, 216:296) = 1;    %Creating a white rectange of dimension 40 x 80 at the centre of the black image
subplot(2, 2, 1)
imshow(I);
title 'Original Image'

I_rot = imrotate(I, 45, 'crop'); % Rotating the image by 45 degrees and using crop to mak ethe dimesion equal to original image
subplot(2, 2, 2)
imshow(I_rot)
title 'Rotated Image'


I_fft = fftshift(fft2(I));  %Taking fft and centering the transform
subplot(2, 2, 3)
imshow(log(1 + abs(I_fft)), []); %Displaying the fft transform and using log to widen the intensities for better viewing
title 'FFT for Original Image'  

I_rot_fft = fftshift(fft2(I_rot));
subplot(2, 2, 4)
imshow(log(1 + abs(I_rot_fft)), []);
title 'FFT for Rotated Image'


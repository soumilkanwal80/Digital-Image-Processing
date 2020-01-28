clear;
I = imread('./halftone.png');

subplot(2, 2, 1)
imshow(I);
title 'Original Image';

subplot(2, 2, 2)
I_fft = fftshift(fft2(I));
imshow(log(1 + abs(I_fft)), []);
title 'FFT of Original Image';

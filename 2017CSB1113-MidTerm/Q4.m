I = imread('./lena512.bmp');
[row, col] = size(I);
subplot(2, 2, 1);
imshow(I, []);
title 'Original Image';

P = row/4;
Q = col/4;
b = 3;
I = double(I);

%Getting the Filter
H = FreqFilter(row, col, P, Q, 1);

%Taking FFT and centering it
I_fft = fftshift(fft2(I));

subplot(2, 2, 2)
imshow(log(1 + abs(I_fft)), []);
title 'FFT of Original Image';

%Filtering the image in frequency domain
I_fft_filtered = I_fft .* H;

%Uncentering then inverse FFT and taking real part of the image
I_filtered = real(ifft2(ifftshift(I_fft_filtered)));

subplot(2, 2, 3)
imshow(I_filtered, []);
title 'Filtered Image';

subplot(2, 2, 4)
imshow(log(1 + abs(I_fft_filtered)), []);
title 'FFT of Filtered Image';


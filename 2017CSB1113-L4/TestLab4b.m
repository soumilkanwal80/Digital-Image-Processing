im1 = imread('./Sample.jpg');
im2 = imread('./NewCapitol.jpg');

im1 = double(im1);
im2 = double(im2);

fftim1 = fft2(im1);
fftim2 = fft2(im2);

im1_amp = abs(fftim1);
im2_amp = abs(fftim2);


im1_phase = angle(fftim1);
im2_phase = angle(fftim2);

figure(1);
subplot(2, 2, 1)
imshow(log(1 + im1_amp), []);
title 'Sample Magnitude'

subplot(2, 2, 2)
imshow(log(1 + im2_amp), []);
title 'New Capitol Magnitude'

subplot(2, 2, 3)
imshow(im1_phase, []);
title 'Sample Phase'

subplot(2, 2, 4)
imshow(im2_phase, []);
title 'New Capitol Phase'
% Part 2
im1_fft_phase_recon = exp(1i.*im1_phase);
im2_fft_phase_recon = exp(1i.*im2_phase);

im1_phase_recon = real(ifft2(im1_fft_phase_recon));
im2_phase_recon = real(ifft2(im2_fft_phase_recon));

im1_amp_recon = real(ifft2(im1_amp));
im2_amp_recon = real(ifft2(im2_amp));

figure(2);
subplot(2, 2, 1)
imshow(im1_phase_recon, []);
title 'Phase of Sample';

subplot(2, 2, 2)
imshow(im2_phase_recon, []);
title 'Phase of New Capitol';

subplot(2, 2, 3)
imshow(im1_amp_recon, []);
title 'Magnitude of Sample';

subplot(2, 2, 4)
imshow(im2_amp_recon, []);
title 'Magnitude of New Capitol';

%Part 3
figure(3);
im1_swap_recon = im1_amp .* exp(1i*im2_phase);
im2_swap_recon = im2_amp .* exp(1i*im1_phase);

im1_swap = real(ifft2(im1_swap_recon));
im2_swap = real(ifft2(im2_swap_recon));

subplot(2, 1, 1)
imshow(im1_swap, []);
title 'Amplitude of Sample and Phase of New Capitol';

subplot(2, 1, 2)
imshow(im2_swap, []);
title 'Amplitude of New Capitol and Phase of Sample';

%Part 4
figure(4);
rect = zeros(512);
rect(236: 276, 216:276) = 1;
subplot(2, 2, 1)
imshow(rect, []);
title 'Original Image';

rotrect = imrotate(rect, 45, 'bilinear', 'crop');
subplot(2, 2, 2)
imshow(rotrect, []);
title 'Rotated Rectangle'

rectfft = fftshift(fft2(rect));
rotrectfft = fftshift(fft2(rotrect));

subplot(2, 2, 3)
imshow(log(1 + abs(rectfft)), []);
title 'FFT of Original Image';

subplot(2, 2, 4)
imshow(log(1 + abs(rotrectfft)), []);
title 'FFT of Rotated Rectangle';
fprintf('Rotation in spatial domain leads to rotation by same angle in frequency domain.');

%Part 5
figure(5);
iml = imread('./lena.jpg');
iml_fft = fftshift(fft2(iml));
iml_fft_amp = abs(iml_fft);
iml_fft_phase = angle(iml_fft);
iml_fft_recon = iml_fft_amp .* exp(1i * 0);
iml_recon = ifft2(ifftshift(iml_fft_recon));
imshow(iml_recon, []);
title 'Lena with phase 0';

figure(6);
iml_fft_mag100 = 100 .* exp(1i .* iml_fft_phase);
iml_fft_magavg = mean(mean(iml_fft_amp)) .* exp(1i .* iml_fft_phase);

iml_mag100 = ifft2(ifftshift(iml_fft_mag100));
iml_magavg = ifft2(ifftshift(iml_fft_magavg));

subplot(1, 2, 1)
imshow(real(iml_mag100), []);
title 'Image with magnitude 100';
subplot(1, 2, 2)
imshow(real(iml_magavg), []);
title 'Image with magnitude as mean of  image';
fprintf('The phase is required too reconstruct the original image because relative phases of the component waves determine the superposition of those waves.\n');




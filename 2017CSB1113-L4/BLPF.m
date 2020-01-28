figure(1);

n = 2;
d0 = 20;
im = imread('./Sample.jpg');
subplot(1, 3, 1)
imshow(im);
title 'Original Image';
[h, w] = size(im);
im = double(im);
im = fftshift(fft2(im));
[x, y] = meshgrid(-floor(w/2):floor(w/2)-1, -floor(h/2):floor(h/2)-1);

B = sqrt(2) - 1;
D = sqrt(x.^2 + y.^2);
H = 1 ./ (1 + B * ((d0 ./ D).^(2 * n)));
H = 1- H;
subplot(1, 3, 2)
imshow(H);
title 'Butterworth Low Pass Filter';
im = im .* H;
im = ifftshift(im);
out = uint8(real(ifft2(im)));
subplot(1, 3, 3)
imshow(out);
title 'Filtered Image';
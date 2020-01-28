figure(2);
n = 2;
sX = 40;
sY = 140;

im = imread('./Sample.jpg');
subplot(1, 3, 1)
imshow(im);
title 'Original Image';
[h, w] = size(im);
im = double(im);
im = fftshift(fft2(im));
[x, y] = meshgrid(-floor(w/2):floor(w/2)-1, -floor(h/2):floor(h/2)-1);

Cx = 0.5*w;
Cy = 0.5*h;

X = ones(1, w, 'double');
Y = ones(h, 1, 'double');

for i = 2:w
    X(1, i) = X(1, i-1) + 1;
end

for i = 2:h
    Y(i, 1) = Y(i-1, 1) + 1;
end

X = X - Cx;
Y = Y - Cy;

eX = double(exp(-((X.^2)./(2*sX).^2)));
eY = double(exp(-((Y.^2)./(2*sY).^2)));

H = ones(h, w, 'double');

for i = 1:h
    for j = 1:w
        H(i, j) = eX(1, j) .* eY(i, 1);
    end
end

subplot(1, 3, 2);
imshow(H);
title 'Gaussian Low Pass Filter';

im = im .* H;
im = ifftshift(im);
out = uint8(real(ifft2(im)));
subplot(1, 3, 3);
imshow(out);
title 'Filtered Image';
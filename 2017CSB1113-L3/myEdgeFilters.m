I = imread('./clown.tif');
subplot(3, 1, 1)
imshow(I);
title 'Original Image';

x = [-1 -2 -1; 0 0 0; 1 2 1];
y = [-1 0 1; -2 0 2; -1 0 1];

Gx = imfilter(I, x);
Gy = imfilter(I, y);

Gx = double(Gx);
Gy = double(Gy);

B = sqrt(Gx.^2 + Gy.^2);
B = uint8(B);
subplot(3, 1, 2)
imshow(B);
title 'Gaussian Filter (3x3)';

Lf = [-1 -1 -1;-1 8 -1;-1 -1 -1];

L = imfilter(I, Lf);
subplot(3, 1, 3)
imshow(L);
title 'Laplacian Filter(3x3) -1 -1 -1;-1 8 -1;-1 -1 -1'
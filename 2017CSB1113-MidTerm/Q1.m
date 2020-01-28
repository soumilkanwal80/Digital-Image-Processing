clear;
I = imread('./Sattelite.jpg');
I = rgb2gray(I);
subplot(2, 2, 1)
imshow(I);
title 'Original Image'

I1 = PMedian(I, 5, 0);
subplot(2, 2, 2);
imshow(I1);
title 'Simple Median Filtered Image'

I2 = PMedian(I, 3, 0.5);
I3 = PMedian(I, 5, 0.2);

subplot(2, 2, 3)
imshow(I2)
title '3X3 Filter alpha = 0.5'

subplot(2, 2, 4)
imshow(I3)
title '5X5 Filter alpha = 0.2'
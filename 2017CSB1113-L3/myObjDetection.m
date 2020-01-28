I = imread('./standard.jpg');
subplot(2, 3, 1)
imshow(I);
title 'Original';

dimensions = [4,4];
h = fspecial('average', dimensions);

J = imfilter(I, h);
subplot(2, 3, 2)
imshow(J);
title 'Smoothed Image';

K = im2bw(J);
subplot(2, 3, 3)
imshow(K);
title 'Thresholded Image'


subplot(2, 3, 4)
imshow(I);
title 'Original';

dimensions = [1,14];
h = fspecial('average', dimensions);

J = imfilter(I, h);
subplot(2, 3, 5)
imshow(J);
title 'Smoothed Image';

K = im2bw(J, 0.5115);
subplot(2, 3, 6)
imshow(K);
title 'Thresholded Image'


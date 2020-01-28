% image_name = input('Enter the name of the image: ', 's');
I = imread('./redeyebaby.jpg');
J = imread('./Red-eye_effect.png');
K = imread('./redeye.jpg');
L = imread('./kidred.jpg');

subplot(4, 2, 1)
imshow(I);
title 'Before Removal';
RedEyeRemoval(I, 1);

subplot(4, 2, 3)
imshow(J);
title 'Before Removal';
RedEyeRemoval(J, 2);

subplot(4, 2, 5)
imshow(K);
title 'Before Removal';
RedEyeRemoval(K, 3);

subplot(4, 2, 7)
imshow(L);
title 'Before Removal';
RedEyeRemoval(I, 4);
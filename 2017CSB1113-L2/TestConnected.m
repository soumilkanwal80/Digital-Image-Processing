I = imread('img22gd2.tif');
% imshow(I);
subplot(3,3 ,1)
ConnectedSet(I, 67, 45, 1, 2, 1);
title '4 Neighbors Vert and Hori T = 2'
subplot(3, 3, 2)
ConnectedSet(I, 67, 45, 2, 2, 1);
title '4 Diagonal Neighbors and T = 2'
subplot(3, 3, 3)
ConnectedSet(I, 67, 45, 3, 2, 1);
title '8 Neighbors and T = 2'

subplot(3,3 ,4)
ConnectedSet(I, 67, 45, 1, 1, 1);
title '4 Neighbors Vert and Hori T = 1'
subplot(3, 3, 5)
ConnectedSet(I, 67, 45, 2, 1, 1);
title '4 Diagonal Neighbors and T = 1'
subplot(3, 3, 6)
ConnectedSet(I, 67, 45, 3, 1, 1);
title '8 Neighbors and T = 1'

subplot(3,3 ,7)
ConnectedSet(I, 67, 45, 1, 3, 1);
title '4 Neighbors Vert and Hori T = 3'
subplot(3, 3, 8)
ConnectedSet(I, 67, 45, 2, 3, 1);
title '4 Diagonal Neighbors and T = 3'
subplot(3, 3, 9)
ConnectedSet(I, 67, 45, 3, 3, 1);
title '8 Neighbors and T = 3'
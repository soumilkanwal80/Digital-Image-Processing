I = imread('./3.png');
I = im2double(I);

alpha = 1.0;
epsilon = 0.0001;
length = 5;

[R, G, B] = imsplit(I);
figure(1)
subplot(3, 1, 2) 
histogram(R(:), 256, 'EdgeColor',  'r');
title 'Histogram of Red Pixels'
subplot(3, 1, 3) 
histogram(G(:), 256, 'EdgeColor',  'g');
title 'Histogram of Green Pixels'
subplot(3, 1, 1) 
histogram(B(:), 256, 'EdgeColor',  'b');
title 'Histogram of Blue Pixels'

figure(4)
L = max(I, [], 3);
[r, c] = size(L);
imshow(L)
title 'Initial Illumination Map'
% 
grad_l_v = diff(L, 1, 1);
grad_l_v = [grad_l_v; L(1, :) - L(end, :)];
grad_l_h = diff(L, 1, 2);
grad_l_h = [grad_l_h, L(:, 1) - L(:, end)];

cum_grad_l_h = filter2(ones(1,length),grad_l_h);
cum_grad_l_v = filter2(ones(length,1),grad_l_v);

W_h = 1./((abs(cum_grad_l_h)) + epsilon);
W_v = 1./((abs(cum_grad_l_v)) + epsilon);

%minimization

a = -0.3;
b = 1.1;
g = @(I,k)I.^(k.^a).*(exp((1-k.^a).*b));


T = repmat(L, [1, 1, 3]);
k = min(1./T, 7);

out = g(I, k);
out = max(min(1, out), 0);
figure(2)
imshow(I);
title 'Original Image'
figure(3)
imshow(out);
title 'Enhanced Image'
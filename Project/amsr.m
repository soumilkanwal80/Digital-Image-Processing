I = imread('./5.png');
I = im2double(I);

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

Y = 0.299 * R + 0.587 * G + 0.114 * B;
% subplot(4, 4, 5)
% imshow(Y, []);
% title 'Y';

%MSR
sigma1 = 15;
sigma2 = 80;
sigma3 = 250;


g1 = gaussianFilter(5, sigma1);
g2 = gaussianFilter(20, sigma2);
g3 = gaussianFilter(50, sigma3);

Y1_ssr = computeYSSR(Y, I, g1);
Y2_ssr = computeYSSR(Y, I, g2);
Y3_ssr = computeYSSR(Y, I, g3);

x = 50;
sigmax = 300;
Y_ssr = computeYSSR(Y, I, gaussianFilter(x, sigmax));
out1_ssr = enhance_image(Y1_ssr, Y, I);
% imshow(out1_ssr);



mu1 = 32;
mu2 = 96;
mu3 = 160;
mu4 = 224;
sigma = 32;

p1 = exp(-(Y-mu1).^2./(2*sigma^2));
p2 = exp(-(Y-mu2).^2./(2*sigma^2));
p3 = exp(-(Y-mu3).^2./(2*sigma^2));
p4 = exp(-(Y-mu4).^2./(2*sigma^2));

p4 = max(p1, p4);

omega1 = p1./(p1 + p2 + p3 + p4);
omega2 = p2./(p1 + p2 + p3 + p4);
omega3 = p3./(p1 + p2 + p3 + p4);
omega4 = p4./(p1 + p2 + p3 + p4);

Y_amsr = omega1.*Y + omega2.*Y1_ssr + omega3.*Y2_ssr + omega4.*Y3_ssr; 

out1_ssr = reconstructRGB(Y_amsr, Y, R, G, B);
out = enhance_image(Y_amsr, Y, I);
figure(2)
imshow(I);
title 'Input Image'
figure(3)
imshow(out + 0.05);
title 'Output Image'

[R, G, B] = imsplit(out);
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








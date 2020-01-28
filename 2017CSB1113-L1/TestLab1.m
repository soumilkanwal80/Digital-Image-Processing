H = imread('./pout.tif');
J = imread('./mri.tif');
K = imread('./lena512.bmp');
L = imread('./rice.png');
numBins = 10;


I = L;


subplot(2, 2, 1)
imshow(I);
title 'Original'
subplot(2, 2, 2)
myImgHist(I, numBins);
title 'Histogram'
subplot(2, 2, 3)
pdf = myImPDF(I, numBins);
title 'PDF'
subplot(2, 2, 4)
myCDF(pdf);
title 'CDF'

pause(5);

subplot(1,4, 1)
imshow(I);
title 'Original'
subplot(1, 4, 2)
myImgNeg(I);
title 'Negative'
subplot(1, 4, 3)
myImgLog(I, 51);
title 'Log'
subplot(1, 4, 4)
myImgGamma(I, 0.2104, 5);
title 'Gamma'
pause(5);

I = K;

subplot(2, 2, 1)
imshow(I);
title 'Original'
subplot(2, 2, 2)
myImgHist(I, numBins);
title 'Histogram'
subplot(2, 2, 3)
pdf = myImPDF(I, numBins);
title 'PDF'
subplot(2, 2, 4)
myCDF(pdf);
title 'CDF'

pause(5);

subplot(1,4, 1)
imshow(I);
title 'Original'
subplot(1, 4, 2)
myImgNeg(I);
title 'Negative'
subplot(1, 4, 3)
myImgLog(I, 51);
title 'Log'
subplot(1, 4, 4)
myImgGamma(I, 0.2104, 5);
title 'Gamma'
pause(5);

pause(5);

I = J;
subplot(2, 2, 1)
imshow(I);
title 'Original'
subplot(2, 2, 2)
myImgHist(I, numBins);
title 'Histogram'
subplot(2, 2, 3)
pdf = myImPDF(I, numBins);
title 'PDF'
subplot(2, 2, 4)
myCDF(pdf);
title 'CDF'

pause(5);
subplot(1,4, 1)
imshow(I);
title 'Original'
subplot(1, 4, 2)
myImgNeg(I);
title 'Negative'
subplot(1, 4, 3)
myImgLog(I, 51);
title 'Log'
subplot(1, 4, 4)
myImgGamma(I, 0.2104, 5);
title 'Gamma'
pause(5);

pause(5);

I = H;
subplot(2, 2, 1)
imshow(I);
title 'Original'
subplot(2, 2, 2)
myImgHist(I, numBins);
title 'Histogram'
subplot(2, 2, 3)
pdf = myImPDF(I, numBins);
title 'PDF'
subplot(2, 2, 4)
myCDF(pdf);
title 'CDF'

pause(5);

subplot(1,4, 1)
imshow(I);
title 'Original'
subplot(1, 4, 2)
myImgNeg(I);
title 'Negative'
subplot(1, 4, 3)
myImgLog(I, 51);
title 'Log'
subplot(1, 4, 4)
myImgGamma(I, 0.2104, 5);
title 'Gamma'
pause(5);

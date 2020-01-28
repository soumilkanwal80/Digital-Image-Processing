function [outImg] = MyCannyEdgeDetector(inImg, sSigma, tLow, tHigh)

[r, c, d] = size(inImg);
if d~=1
    inImg = rgb2gray(inImg);
end

subplot(2, 3, 1)
imshow(inImg)
title 'Original Image'
inImg = double(inImg);
gaussianFilter = fspecial('gaussian', 5, sSigma);
% meanFilter = ones(3, 3);
% meanFilter = double(meanFilter) / 9;
inImg = imfilter(inImg, gaussianFilter);

subplot(2, 3, 2)
imshow(uint8(inImg), [])
title 'Smoothened Image'

Gx = double(ones(r, c));
Gy = double(ones(r, c));
I = inImg;

for i = 1:r
    for j = 1:c
        if i == 1
            xl = 0;
        else
            xl = I(i-1, j);
        end
        if i == r
            xr = 0;
        else
            xr = I(i+1, j);
        end
        
        if j == 1
            yl = 0;
        else
            yl = I(i, j-1);
        end
        
        if j == c
            yr = 0;
        else
            yr = I(i, j + 1);
        end
        
        curr = I(i, j);
        Gx(i, j) = (xl + xr)/2 - curr;
        Gy(i, j) = (yl + yr)/2 - curr;
    end
end

M = sqrt(Gx.*Gx + Gy.*Gy);
phi = atan2(Gy, Gx);

subplot(2, 3, 3)
imshow(uint8(Gx), [])
title 'X-Gradient'

subplot(2, 3, 4)
imshow(uint8(Gy), [])
title 'Y-Gradient'


%NON MAX SUPPRESSION
NMS = MyNonMaxSuppression(M, phi);
subplot(2, 3, 5)
imshow(uint8(NMS), [])
title 'Non Max Suppression'

E = MyHysterisis(NMS, tLow, tHigh);
subplot(2, 3, 6)
imshow(uint8(E), [])
title 'Final Image'
outImg = E;



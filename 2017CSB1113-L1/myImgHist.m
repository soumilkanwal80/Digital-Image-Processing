function f = myImgHist(inImg, nBins)
    [r, c] = size(inImg);
    f = zeros(nBins);
    for i = 1:r
        for j = 1:c
            z = inImg(i, j);
            z = double(z)*nBins/255;
            z = uint8(z);
            f(z+1) = f(z+1) + 1;
        end
    end
    n = 0:nBins-1;
    stem(n, f);
    grid on;
    ylabel('Frequency');
    xlabel('Intensity Levels');
end
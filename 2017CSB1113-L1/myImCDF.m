function cdf = myImCDF(inImg, nBins)
    [r, c] = size(inImg);
    cdf = zeros(nBins);
    count =0;
    for i = 1:r
        for j = 1:c
            z = inImg(i, j);
            z = double(z)*nBins/255;
            z = uint8(z);
            cdf(z+1) = cdf(z+1) + 1;
            count = count +1;
        end
    end
    
    for i = 1:nBins+1
        cdf(i) = cdf(i)/count;
    end
   
    for i = 2:nBins+1
        cdf(i) = cdf(i) + cdf(i-1);
    end
    

    cdf(1) = 0/count;
    
    n = 0:nBins-1;
    stem(n, cdf);
    grid on;
    ylabel('CDF');
    xlabel('Intensity Levels');
end
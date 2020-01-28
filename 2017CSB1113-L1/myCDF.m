function cdf = myCDF(pdf)
    nBins = size(pdf);
    cdf = zeros(nBins);
    cdf(1) = pdf(1);
    for i = 2:nBins
        cdf(i) = pdf(i) + cdf(i-1);
    end
    
    n = 0:nBins-1;
    stem(n, cdf);
    grid on;
    ylabel('CDF');
    xlabel('Intensity Levels');
end
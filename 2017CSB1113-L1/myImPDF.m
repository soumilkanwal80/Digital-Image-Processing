function pdf = myImPDF(inImg, nBins)
    [r, c] = size(inImg);
    pdf = zeros(nBins);
    count =0;
    for i = 1:r
        for j = 1:c
            z = inImg(i, j);
            z = double(z)*nBins/255;
            z = uint8(z);
            pdf(z+1) = pdf(z+1) + 1;
            count = count +1;
        end
    end
    
    for i = 1:nBins+1
        pdf(i) = pdf(i)/count;
        
    end
    
    for i = 1:nBins+1
        fprintf("%0.2f ", pdf(i));
    end
    
    n = 0:nBins-1;
    stem(n, pdf);
    grid on;
    ylabel('PDF');
    xlabel('Intensity Levels');
    
end
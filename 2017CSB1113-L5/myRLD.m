function [outImg] = myRLD(inCode)
    len = size(inCode, 1);
    m = inCode(1);
    n = inCode(2);
    outImg = zeros(m*n, 1);
    k = 1;
    for i  = 3:2:len
        intensity = inCode(i);
        freq = inCode(i+1);
        for j  = 1:freq
           outImg(k) = intensity;
           k = k + 1;
           
        end
    end
    
    outImg = reshape(outImg, [m, n]);
    
function [outCode] = myRLE(inImg)
%     inImg = imread('./Fig1.tif');
    [m, n] = size(inImg);
    A = zeros(2*m*n+2, 1);
    A(1) = m;
    A(2) = n;
    i = 3;
    
    inImg = inImg(:);
    
    len = m*n;
    count = 1;
    x = 0;
    for j = 1:len-1
        if inImg(j) == inImg(j+1)
           count = count + 1;
           x = 0;
        else 
            A(i) = inImg(j);
            A(i+1) = count;
            i = i + 2;
            count = 1;
            x = 1;
        end
    end
    if x == 0
        A(i) = inImg(j);
        A(i+1) = count;
        i = i + 2;
    end
    if x == 1
        A(i) = inImg(len);
        A(i+1) = 1;
        i= i + 2;
    end
        
    outCode = zeros(i-1, 1);
    for j = 1:i-1
        outCode(j) = A(j);
    end
    
        
    
    
    
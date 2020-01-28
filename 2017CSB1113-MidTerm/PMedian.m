function [out] = PMedian(inImg, wSize, alpha)
    I = inImg;
    %Padding the Input Image 
    I_padded = padarray(I, [floor(wSize/2), floor(wSize/2)]);
    [row, col] = size(I_padded);
    
    %Initializing the output image with dimensions of input
    out = zeros(size(I));
    %temporary array for calculating median
    temp = 1:25;
    
    %iterate over the padded image
    for i = 1:row-wSize + 1
        for j = 1:col-wSize + 1
            m = 1;
            
            %store the values of every window in a temporary array
            for k = i:i+wSize-1
                for l = j:j + wSize-1
                  temp(m) = I_padded(k, l);
                  m = m+1;
                end
            end
            %Sort and find median of the window
            temp = sort(temp);
            medianVal = temp(floor(wSize*wSize/2));
            
            %Assign intensity to new image using alpha
            out(i, j) = alpha*double(I_padded(i, j)) + (1 - alpha) * double( medianVal);
        end
    end
    out = uint8(out);
    
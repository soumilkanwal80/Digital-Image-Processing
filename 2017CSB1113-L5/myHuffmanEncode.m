function [x, y, z] = myHuffmanEncode(I)
    I = I(:);
    
%     freq = zeros(8192, 1);

    [a, b] = imhist(I, 256*256);
    k = 1;
    len = length(b);

    for i = 1:len
        if a(i)~=0
            prob(k) = double(a(i))/length(I);
            char(k) = b(i);
            k = k + 1;
        end
    end

    [~, huffTable] = buildHuffTree(char, prob);

    compressedImage = '';
    
    for i = 1:length(I)
        for j = 1:length(huffTable.char)
            if huffTable.char{j} == I(i)
               compressedImage = strcat(compressedImage, string(huffTable.code{j})); 
%                fprintf("%d %s\n", i, huffTable.code{j});
            end
        end
    end

x = compressedImage;
y = char;
z = prob;
% w = arr;



function [x] = myHuffmanDecode(compressedImage, char, prob)
    [~, huffTable] = buildHuffTree(char, prob);

    temp = '';
    k = 1;
    for i = 1:length(compressedImage)
        temp = strcat(temp, compressedImage(i));
        for j = 1:length(huffTable.code)
            if strcmp(huffTable.code{j}, temp) == 1 && strlength(temp) == strlength(huffTable.code{j})
                x(k) = huffTable.char{j};
                k = k+ 1;
                temp = '';
            end
        end
    end
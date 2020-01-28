function outImg = myImgNeg(inImg)
    [row, col] = size(inImg);
    for i = 1:row
        for j = 1:col
             inImg(i, j) = 255 - inImg(i, j);
        end
    end
    imshow(inImg);
    outImg = inImg;
end
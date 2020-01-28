function [I] = myImgLog( inImg ,c )
I = inImg;
[m,n] = size(I) ;
for i = 1:m
    for j = 1:n
        I(i,j) = c*log(1 + double(I(i,j))) ;
    end
end

imshow(I);
end
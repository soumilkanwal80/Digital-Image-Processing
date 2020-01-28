function [I] = myImgGamma( inImg , m, E )
I = inImg;
I = im2double(I) ;
[p,q] = size(I) ;
for i = 1:p
    for j = 1:q
        I(i,j) = 1./(1 + (m./double(I(i,j) + eps)).^E) ;
    end
end

imshow(I);

end
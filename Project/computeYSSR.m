function [out] = computeYSSR(Y, I, g1)
r1_ssr = imfilter(Y, g1);
r1_ssr = log(Y) - log(r1_ssr);
temp = sort(r1_ssr(:));
idx1 = uint32(0.01*size(I, 1)*size(I, 2));
idx99 = uint32(0.99*size(I, 1) * size(I, 2));
p1 = temp(idx1);
p99 = temp(idx99);

Y1_ssr  = r1_ssr;
[r, c] = size(r1_ssr);
for i = 1:r
    for j = 1:c
        if(Y1_ssr(i, j)<p1)
            Y1_ssr(i, j) = 0;
        elseif(Y1_ssr(i, j)>=p1 && Y1_ssr(i, j) < p99)
            Y1_ssr(i, j) = 255*(Y1_ssr(i, j)-p1)/(p99-p1);
        else
            Y1_ssr(i, j) = 255;
        end
    end
end
out = Y1_ssr;


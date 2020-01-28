function [out] = gaussianFilter(n, sigma)
    n = floor(n/2);
    [X, Y] = meshgrid(-n:n, -n:n);
    out = exp(-(X.^2 + Y.^2)/(2*sigma*sigma));
    out = out/sum(out(:));
function [H] = FreqFilter(row, col, P, Q, b)
%Doubling the values to allow floating point operations
P = double(P);
Q = double(Q);
b = double(b);

H = zeros(row, col);

for u = 1:row
    for v = 1:col
        H(u, v) = (b + 2*cos(2*pi*(u - P/2)/P))*(b + 2*cos(2*pi*(v - Q/2)/Q))/((b+2)^2) ;
    end
end








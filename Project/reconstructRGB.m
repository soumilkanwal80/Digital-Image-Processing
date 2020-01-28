function [out] = reconstructRGB(Yn, Y, R, G, B)
    Rn = finalResult(Yn, Y, R);
    Gn = finalResult(Yn, Y, G);
    Bn = finalResult(Yn, Y, B);
    out = cat(3, Rn, Gn, Bn)./255;
end

function [out] = finalResult(Yn, Yo, C)
    ratio = Yn./Yo;
    out = ratio.*(C + Yo) + C - Yo;
    out = out / 2;
end

function [E] = MyHysterisis(NMS, l, h)
    [r, c] = size(NMS);
    S = ones(r, c);
    W = ones(r, c);
    for i = 1:r
        for j = 1:c
            if NMS(i, j) < h
                S(i, j) = 0;
            end
            
            if NMS(i, j) > l && NMS(i, j) < h
                W(i, j) = 1;
            else
                W(i, j) = 0;
            end
        end
    end
    
    T = padarray(S, [1, 1]);
    E = S;
    for i = 2:r+1
        for j = 2:c+1
            if W(i-1, j-1) == 1
                
                for k = -1:1
                    for l = -1:1
                        if k~=0 && l~=0 && T(i+k, j+l) == 1
                           E(i-1, j-1) = 1; 
                        end
                            
                    end
                end
                
            end
            
        end
    end
    
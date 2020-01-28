function [out] = MyNonMaxSuppression(M, phi)
    N = phi .* 4/pi;
    O = int8(N);
    out = ones(size(M));
    O = O + 4;
    M = uint8(M);
    [r, c] = size(M);
    M = padarray(M, [1, 1]);
    
    
    for i = 2:r+1
        for j = 2:c+1
            
            if O(i-1, j-1) == 0
                if M(i, j) < M(i-1, j) || M(i, j) < M(i + 1, j)
                    out(i-1, j-1) = 0;
                else
                    out(i-1, j-1) = M(i, j);
                end
            elseif O(i-1, j-1) == 1
                if M(i, j) < M(i-1, j+1) || M(i, j) < M(i + 1, j-1)
                    out(i-1, j-1) = 0;
                else
                    out(i-1, j-1) = M(i, j);
                end
            elseif O(i-1, j-1) == 2
                if M(i, j) < M(i, j+1) || M(i, j) < M(i, j-1)
                    out(i-1, j-1) = 0;
                else
                    out(i-1, j-1) = M(i, j);
                end
            elseif O(i-1, j-1) == 3
                if M(i, j) < M(i-1, j-1) || M(i, j) < M(i + 1, j+1)
                    out(i-1, j-1) = 0;
                else
                    out(i-1, j-1) = M(i, j);
                end
            elseif O(i-1, j-1) == 4
                if M(i, j) < M(i-1, j) || M(i, j) < M(i + 1, j)
                    out(i-1, j-1) = 0;
                else
                    out(i-1, j-1) = M(i, j);
                end
            elseif O(i-1, j-1) == 5
                if M(i, j) < M(i-1, j+1) || M(i, j) < M(i + 1, j-1)
                    out(i-1, j-1) = 0;
                else
                    out(i-1, j-1) = M(i, j);
                end
            elseif O(i-1, j-1) == 6
                if M(i, j) < M(i, j+1) || M(i, j) < M(i, j-1)
                    out(i-1, j-1) = 0;
                else
                    out(i-1, j-1) = M(i, j);
                end
            elseif O(i-1, j-1) == 7
                if M(i, j) < M(i-1, j-1) || M(i, j) < M(i + 1, j+1)
                    out(i-1, j-1) = 0;
                else
                    out(i-1, j-1) = M(i, j);
                end
            elseif O(i-1, j-1) == 8
                if M(i, j) < M(i-1, j) || M(i, j) < M(i + 1, j)
                    out(i-1, j-1) = 0;
                else
                    out(i-1, j-1) = M(i, j);
                end
            end
        end
    end
    
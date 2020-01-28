itr = 1;
I = imread('img22gd2.tif');
T = 5;
option = 2;

[r, c] = size(I);
J = zeros(r, c);


for i =1:r
    for j = 1:c
        J(i, j) = -1;
    end
end


for i =1:r
    for j = 1:c
        if(J(i, j) == -1)
            [vis, bl] = ConnectedSet(I, i, j, option, T, 0);
            if(bl == 1)
                for k = 1:r
                    for l = 1:c
                        if(vis(k, l) == 1)
                            J(k, l) = itr;
                        end
                    end
                end
                itr = itr + 1;
            end
            
            if(bl == 0)
                for k = 1:r
                    for l = 1:c
                        if(vis(k, l) == 1)
                            J(k, l) = 0;
                        end
                    end
                end
            end
        end
    end
end
imshow(J);
imwrite(J, 'segmentation.tif');

x = imread('segmentation.tif');
N=max(x(:));
image(x)
colormap(rand(N,3))
axis('image')

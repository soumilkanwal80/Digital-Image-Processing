function f = RedEyeRemoval(I, num)
    [p, q, r] = size(I);
    for i = 1:p
        for j = 1:q
            if(I(i, j, 1) >  50)
                I(i, j, 1) = (I(i,j, 2) + I(i, j, 3))/2; 
            end
        end
    end
    subplot(4, 2, num*2)
    imshow(I);
    title 'After Removal'
end
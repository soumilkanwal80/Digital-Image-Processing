function myUnsharp(fileName)
    I = imread(fileName);
    subplot(2, 1, 1)
    imshow(I);
    title 'Original';

    h = fspecial('average', [4, 4]);
    J = imfilter(I, h);
    % subplot(2, 2, 2)
    % imshow(J);

    K = I - J;
    % subplot(2, 2, 3)
    % imshow(K);

    H = K + I;
    subplot(2, 1, 2)
    imshow(H);
    title 'Sharpened'; 
end
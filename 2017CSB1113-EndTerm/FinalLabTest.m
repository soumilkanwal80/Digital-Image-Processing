I1 = imread('./lena512.bmp');
I2 = imread('./rice.png');
I3 = imread('./tire.tif');

figure(1)
E1 = MyCannyEdgeDetector(I1, 0.9, 2, 5);
figure(2)
E2 = MyCannyEdgeDetector(I2, 0.8, 2, 7);
figure(3)
E3 = MyCannyEdgeDetector(I3, 0.9, 2, 7);
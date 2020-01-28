

I1 = imread('./Fig1.tif');
out1 = uint16(myRLE(I1));
outImg1 = uint8(myRLD(out1));
imwrite(out1, 'Fig1_rle.tif');
imwrite(outImg1, 'Fig1_rld.tif');
r1_rle = size(I1, 1)*size(I1, 2)/length(out1);

I2 = imread('./Fig2.tif');
out2 = uint16(myRLE(I2));
outImg2 = uint8(myRLD(out2));
imwrite(out2, 'Fig2_rle.tif');
imwrite(outImg2, 'Fig2_rld.tif');
r2_rle = size(I2, 1)*size(I2, 2)/length(out2);

I3 = imread('./Fig3.tif');
out3 = uint16(myRLE(I3));
outImg3 = uint8(myRLD(out3));
imwrite(out3, 'Fig3_rle.tif');
imwrite(outImg3, 'Fig3_rld.tif');
r3_rle = size(I3, 1)*size(I3, 2)/length(out3);


 
[img_hc_1, char_hc_1, prob_hc_1] = myHuffmanEncode(I1);
r1_hc = size(I1, 1)*size(I1, 2)*8/strlength(img_hc_1);
img_hc_1 = img_hc_1{1};
img_hc_hd_1 = myHuffmanDecode(img_hc_1, char_hc_1, prob_hc_1);
img_hc_hd_resize_1 = reshape(img_hc_hd_1, [256, 256]);
img_hc_hd_resize_1 = uint8(img_hc_hd_resize_1);
imwrite(img_hc_hd_resize_1, 'Fig1_hd.tif');

[img_hc_2, char_hc_2, prob_hc_2] = myHuffmanEncode(I2);
r2_hc = size(I2, 1)*size(I2, 2)*8/strlength(img_hc_2);
img_hc_2 = img_hc_2{1};
img_hc_hd_2 = myHuffmanDecode(img_hc_2, char_hc_2, prob_hc_2);
img_hc_hd_resize_2 = reshape(img_hc_hd_2, [256, 256]);
img_hc_hd_resize_2 = uint8(img_hc_hd_resize_2);
imwrite(img_hc_hd_resize_2, 'Fig2_hd.tif');

[img_hc_3, char_hc_3, prob_hc_3] = myHuffmanEncode(I3);
r3_hc = size(I3, 1)*size(I3, 2)*8/strlength(img_hc_3);
img_hc_3 = img_hc_3{1};
img_hc_hd_3 = myHuffmanDecode(img_hc_3, char_hc_3, prob_hc_3);
img_hc_hd_resize_3 = reshape(img_hc_hd_3, [256, 256]);
img_hc_hd_resize_3 = uint8(img_hc_hd_resize_3);
imwrite(img_hc_hd_resize_3, 'Fig3_hd.tif');

I1_rle = imread('./Fig1_rle.tif');
[img_rle_hc_1, char_rle_hc_1, prob_rle_hc_1] = myHuffmanEncode(I1_rle);
r1_rle_hc = size(I1_rle, 1)*size(I1_rle, 2)*8/strlength(img_rle_hc_1);
img_rle_hc_1 = img_rle_hc_1{1};
img_rle_hc_hd_1 = myHuffmanDecode(img_rle_hc_1, char_rle_hc_1, prob_rle_hc_1);
img_rle_hc_hd_resize_1 = reshape(img_rle_hc_hd_1, [size(I1_rle, 1), size(I1_rle, 2)]);
img_rle_hc_hd_resize_1 = uint16(img_rle_hc_hd_resize_1);
img_rle_hc_hd_resize_1_rld = uint8(myRLD(img_rle_hc_hd_resize_1));
imwrite(img_rle_hc_hd_resize_1_rld, 'Fig11.tif');


I2_rle = imread('./Fig2_rle.tif');
[img_rle_hc_2, char_rle_hc_2, prob_rle_hc_2] = myHuffmanEncode(I2_rle);
r2_rle_hc = size(I2_rle, 1)*size(I2_rle, 2)*8/strlength(img_rle_hc_2);
img_rle_hc_2 = img_rle_hc_2{1};
img_rle_hc_hd_2 = myHuffmanDecode(img_rle_hc_2, char_rle_hc_2, prob_rle_hc_2);
img_rle_hc_hd_resize_2 = reshape(img_rle_hc_hd_2, [size(I2_rle, 1), size(I2_rle, 2)]);
img_rle_hc_hd_resize_2 = uint16(img_rle_hc_hd_resize_2);
img_rle_hc_hd_resize_2_rld = uint8(myRLD(img_rle_hc_hd_resize_2));
imwrite(img_rle_hc_hd_resize_2_rld, 'Fig22.tif');

I3_rle = imread('./Fig3_rle.tif');
[img_rle_hc_3, char_rle_hc_3, prob_rle_hc_3] = myHuffmanEncode(I3_rle);
r3_rle_hc = size(I3_rle, 1)*size(I3_rle, 2)*8/strlength(img_rle_hc_3);
img_rle_hc_3 = img_rle_hc_3{1};
img_rle_hc_hd_3 = myHuffmanDecode(img_rle_hc_3, char_rle_hc_3, prob_rle_hc_3);
img_rle_hc_hd_resize_3 = reshape(img_rle_hc_hd_3, [size(I3_rle, 1), size(I1_rle, 3)]);
img_rle_hc_hd_resize_3 = uint16(img_rle_hc_hd_resize_3);
img_rle_hc_hd_resize_3_rld = uint8(myRLD(img_rle_hc_hd_resize_3));
imwrite(img_rle_hc_hd_resize_3_rld, 'Fig33.tif');



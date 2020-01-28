function out = enhance_image(Y_amsr, Y, I)
    ratio = Y_amsr./Y;
    hsv = rgb2hsv(im2uint8(I));
    v = hsv(:,:,3);
    v = 0.5.*(ratio.*(v+Y)+v-Y);
    hsv(:,:,3) = v./255;
    d = double(hsv2rgb(hsv)); 
    d = min(max(d,0),1); 
    out = d;
    
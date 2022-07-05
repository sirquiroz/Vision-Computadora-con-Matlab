function img = sobel(image)
hor = [1 2 1; 0 0 0; -1 -2 -1];
ver = -1* hor';

gx = conv2(image, ver, 'same');
gy = conv2(image, hor, 'same');

img = uint8(sqrt(gx.^2 + gy.^2));



endfunction
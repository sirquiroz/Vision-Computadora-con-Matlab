function img = prewitt(image)
hor = [-1 -1 -1; 0 0 0; 1 1 1]; 
vert = -1* hor';

gx = conv2(image, vert, 'same');
gy = conv2(image, hor, 'same');

img = uint8(sqrt(gx.^2 + gy.^2));

endfunction

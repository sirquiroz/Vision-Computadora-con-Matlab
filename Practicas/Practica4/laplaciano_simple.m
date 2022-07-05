function bordes = laplaciano_simple(img)
mask = [0 1 0; 1 -4 1; 0 1 0];

bordes = conv2(img, mask, 'same');
bordes = uint8(zero_crossing(bordes));
endfunction
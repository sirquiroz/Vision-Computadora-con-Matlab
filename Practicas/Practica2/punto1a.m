function im_res = punto1a(img, c)

conv = uint8(255*rgb2hsv(img));
conv(:,:,2) = c* conv(:,:,2);

im_res = hsv2rgb(conv);

endfunction
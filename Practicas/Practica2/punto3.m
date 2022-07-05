function punto3(im)
conv = rgb2hsv(im);

figure
subplot(2,2,1);
imshow(im);
title("Imagen original");
subplot(2,2,2);
imshow(conv(:,:,1));
title("Hue");
subplot(2,2,3);
imshow(conv(:,:,2));
title("Saturation");
subplot(2,2,4);
imshow(conv(:,:,3));
title("Value");

endfunction
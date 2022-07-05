function [suavizado_lena, sharp_lena, suavizado_test, sharp_test] = punto3(img_lena, img_test, mascara_baja3)
suavizado_lena = imfilter(img_lena, mascara_baja3, "replicate");

sharp_lena = unsharp_masking(img_lena, mascara_baja3, 1.5);

suavizado_test = imfilter(img_test, mascara_baja3, "replicate");


sharp_test = unsharp_masking(img_test, mascara_baja3, 1.5);

figure
subplot(2,3,1)
imshow(img_lena)
title("imagen original")
subplot(2,3,2)
imshow(suavizado_lena)
title("suavizado")
subplot(2,3,3)
imshow(sharp_lena)
title("unsharp masking con constante 1.5")
subplot(2,3,4)
imshow(img_test)
title("imagen original")
subplot(2,3,5)
imshow(suavizado_test)
title("suavizado")
subplot(2,3,6)
imshow(sharp_test)
title("unsharp masking con constante 1.5")
fprintf('apretar enter')
pause;
close all;
endfunction
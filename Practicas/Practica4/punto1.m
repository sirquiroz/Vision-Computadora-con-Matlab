function [lena_g, lena_r, test_g, test_r] = punto1(lena, test)

 lena_g = ruido_gaussiano(lena, 0.15,0);
 test_g = ruido_gaussiano(test, 0.15,0);

 lena_r = ruido_rayleigh(lena, 0.1);
 test_r = ruido_rayleigh(test, 0.1);

figure
subplot(2,2,1)
imshow(lena)
title('lena original')
subplot(2,2,3)
imshow(lena_g)
title('lena guassiano')
subplot(2,2,4)
imshow(lena_r)
title('lena rayleigh')
printf('\tapretar enter para pasar de conjunto de imagenes.\n')
pause;

close all;

figure
subplot(2,2,1)
imshow(test)
title('test original')
subplot(2,2,3)
imshow(test_g)
title('test guassiano')
subplot(2,2,4)
imshow(test_r)
title('test rayleigh')
printf('\tapretar enter para terminar el ejercicio.\n')
pause;

close all;
 
 
endfunction 
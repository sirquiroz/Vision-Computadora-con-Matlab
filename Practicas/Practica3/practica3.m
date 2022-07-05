function practica3(img_src, lena_src, test_src)
%pkg load image
mascara_baja3 = [1 2 1; 2 4 2; 1 2 1] * (1/16);
mascara_baja5 = [1 4 6 4 1; 4 16 24 16 4;6 24 36 24 6; 4 16 24 16 4; 1 4 6 4 1] * (1/256);
im = imread(img_src);
fprintf('Practica tres, aprete enter para pasar de ejercicio.\n');
pause;
fprintf('Punto 1.\n');
%punto1(im, mascara_baja3, mascara_baja5);

pause;
close all;

fprintf('Punto 2.\n');
mascara_rectangular = [1 2 1]* (1/4);
%punto2(im, mascara_rectangular);
pause;
close all;

img_lena = imread(lena_src);
img_test = imread(test_src);
fprintf('punto 3.\n');
%[a, b,c,d] = punto3(img_lena, img_test, mascara_baja3);


fprintf('punto 4.\n');
%punto4(img_lena, img_test, mascara_baja3);

fprintf('punto 6.\n');
%punto6(img_lena, img_test, mascara_baja3);

fprintf('punto 8.\n');
%punto8(img_lena, img_test);
pause;
close all;

endfunction
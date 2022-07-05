function Practica4(dir_lena, dir_test)
%pkg load image;
lena = imread(dir_lena);
test = imread(dir_test);
fprintf('Practica tres, aprete enter para pasar de ejercicio.\n');
pause;
fprintf('Punto 1.\n');
[lena_g, lena_r, test_g, test_r] = punto1(lena, test);
 
 imwrite(lena_g, 'lena_guass.png');
 imwrite(lena_r, 'lena_ray.png');
 imwrite(test_g, 'test_guass.png');
 imwrite(test_r, 'test_ray.png');

fprintf('Punto 2.\n');
threshold = 60;
size_square = 5;
punto2(lena, lena_g, lena_r,test, test_g, test_r, threshold, size_square);


fprintf('Punto 3.\n')
punto3(lena, lena_g, lena_r,test,  test_g, test_r)




fprintf('Punto 4.\n')
punto4(lena, test);

endfunction
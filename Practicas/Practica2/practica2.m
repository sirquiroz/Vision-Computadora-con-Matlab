function practica2(src_im)

c_min = 0.5;
c_max = 10;
im =imread(src_im);
fprintf('Practica uno, aprete enter para pasar de ejercicio.\n');
pause;
fprintf('Punto 1.\n');
punto1(im, c_min, c_max);
pause
close all

fprintf('Punto 2.\n');

punto2(im,c_max);
pause
close all

fprintf('Punto 3.\n');

punto3(im);
fprintf("Se puede observar que el value es el que define mejor los bordes y que ha hue le afectan los bordes difusos.\n")
pause
close all
endfunction
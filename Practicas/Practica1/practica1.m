function practica1(src_img1, src_img2, src_imgosc, src_imgec, src_imgcolor)
%resolucion de la practica1 los parametros son las direcciones de las imagenes del usuario.
%img1 e img2 son blanco y negro src_imgosc es una imagen oscura,
% src_imgec es una imagen a ecualizar y imgcolor es con color.
c1 = imread(src_img1);
c2 = imread(src_img2);
osc = imread(src_imgosc);
ec = imread(src_imgec);
color = imread(src_imgcolor);

fprintf('Practica uno, aprete enter para pasar de ejercicio.\n');
pause;
fprintf('Punto 1.\n');
punto1(c1, c2, osc)

fprintf('=======================================================\n');

fprintf('Punto 2.\n Negativo en escala de gris\n');
figure
subplot(1,2,1);
imshow(c1);
title("Original")

subplot(1,2,2)
imshow(negativo(c1));
title("Negativo")

pause;
close;
fprintf(" Negativo de color\n");
figure
subplot(1,2,1);
imshow(color);
title("Original")

subplot(1,2,2)
imshow(negativo(color));
title("Negativo")

pause;
close;
fprintf('=======================================================\n');
umb = 150;
fprintf('Punto 3.\n Umbral = %d.\n Umbral en escala de gris\n', umb);

subplot(1,2,1);
imshow(c1);
title("Original")
subplot(1,2,2)
imshow(umbral(c1, umb));
title("Umbral")
pause;
close;

fprintf(" Umbral en color.\n")
subplot(1,2,1);
imshow(color);
title("Original")

subplot(1,2,2)
imshow(umbral(color,150));
title("umbral")

pause
close all
fprintf('=======================================================\n');
fprintf('Punto 4.\n Bitplane en blanco y negro.\n');
bit_plane(c1);
pause
close all
fprintf(' Bitplane en color.\n');
bit_plane(color);
pause
close all

fprintf('=======================================================\n');
fprintf('Punto 5\n');
figure
subplot(1,2,1)
imshow(c1)
title("Original")
subplot(1,2,2)
bar(crear_histograma(c1));
title("Histograma")
pause
close

fprintf('=======================================================\n');
fprintf('Punto 6\n');
img1 = aumentar_contraste(ec, 1);
img2 = aumentar_contraste(ec, 2);
img3 = aumentar_contraste(ec, 3);
figure
subplot(2,2,1)
imshow(ec)
title("Original")
subplot(2,2,2)
imshow(img1)
title("Misma pendiente para las ultimas dos secciones")
subplot(2,2,3)
imshow(img2)
title("Mayor pendiente para la ulitma seccion.")
subplot(2,2,4)
imshow(img3)
title("Identidad corrida ultima seccion.")
pause
close

fprintf('=======================================================\n');
fprintf('Punto 7\n');
hist = crear_histograma(ec);

img1 = ecualizar_histograma(ec,1);
hist1 = crear_histograma(img1);

img2 = ecualizar_histograma(ec,2);
hist2 = crear_histograma(img2);

figure
subplot(3,2,1)
imshow(ec)
title("Original")
subplot(3,2,2)
bar(hist)
title("Histograma de Original")
subplot(3,2,3)
imshow(img1)
title("Formula simple")
subplot(3,2,4)
bar(hist1)
title("Histograma de Formula simple")
subplot(3,2,5)
imshow(img2)
title("Formula catedra")
subplot(3,2,6)
bar(hist2)
title("Histograma de Formula catedra")
pause
close
fprintf('=======================================================\n');
fprintf('Punto 8\n');

doble = ecualizar_histograma(img2, 2);
hist_doble = crear_histograma(doble);
figure
subplot(3,2,1)
imshow(ec)
title("Original")
subplot(3,2,2)
bar(hist)
title("Histograma de Original")
subplot(3,2,3)
imshow(img2)
title("Formula catedra")
subplot(3,2,4)
bar(hist2)
title("Histograma de Formula catedra")
subplot(3,2,5)
imshow(doble)
title("Doble")
subplot(3,2,6)
bar(hist_doble)
title("Histograma de doble")
pause
fprintf('La intuicion que teniamos era que la imagen se iba a desvirtuar, pero al ver que eran iguales entendimos que la funcion de distribucion acumulada iba a ser siempre la misma y al tratar de encontrar una fomra mas uniforme de distribuir los datos ibamos a caer en el mismo resultado.\n');
pause
pause
close all

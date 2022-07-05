function im_ec = ecualizacion(im)
%ecualiza la im con  su funcion de distribucion acumulada
frecuencia = crear_histograma(im);
close
size(frecuencia)
for i = 1:255
frecuencia(i+1) += frecuencia(i);
endfor

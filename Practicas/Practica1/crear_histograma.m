function histograma = crear_histograma(imagen)
  frecuencias = zeros(256,1);
  
  for i = 1: rows(imagen)
    for j = 1: columns(imagen)
      frecuencias(imagen(i,j)+1)++;
    endfor
  endfor
  
  histograma = frecuencias / (rows(imagen)*columns(imagen));
  
 end
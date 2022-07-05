function [borders, var_img] = eval_var(img, threshold, size_square)

%tengo size que tiene que ser impar (si no se le resta uno)
% size -1 /2 es lo que me muevo para cualquier lado
%en el caso de que me voy out of bounds no considero la parte
%del calculo de la varianza en esas zonas, es decir si estoy en el
% img(1,1) y tengo size = 3 solo voy a ver img(1:2, 1:2) en vez de
% img(0:2, 0:2) con algun padding, ya que eso afecta la imagen la varianza
aux_img = double(img);
margins = (size_square - 1) / 2;
borders = img;
var_img = zeros(size(img));

for i = 1 : size(img)(1)
  for j = 1 : size(img)(2)
    borde_der = uint32(min(i+margins, size(img)(1)));
    borde_izq = uint32(max(i-margins, 1));
    borde_inf = uint32(min(j+margins, size(img)(2)));
    borde_sup = uint32(max(j-margins, 1));
    tam = double((borde_der - borde_izq + 1)* (borde_inf - borde_sup + 1));
    %calc varianza:

    mean = sum(sum(aux_img(borde_izq:borde_der, borde_sup:borde_inf)))/tam;
    aux = aux_img(borde_izq:borde_der, borde_sup:borde_inf)- mean;
    aux = aux .^ 2;
    var_aux = sum(sum(aux));
    var_aux = var_aux/(tam -1);
    var_img(i,j) = var_aux; 
  endfor    
endfor

varianze_list = reshape(var_img, size(var_img)(1)*size(var_img)(2),1);
percentile = prctile(varianze_list, threshold);
index = find(var_img < percentile);
borders(index) = 0;

endfunction
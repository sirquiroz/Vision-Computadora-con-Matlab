function imagen = negativo(im)
%negativo, agarra una imagen y transforma sus componentes en negativos
%por ahora vamos a manejar rgb como maximo, y el L = 256

l = 255;
imagen =  l -1 -im;
endfunction
function imagen = umbral(im, pto)
%transforma la imagen en blanco y negro, si los valores son menores que pto son 0
%si son mayores o iguales son blanco
imagen = (im-pto).*(255*ones(size(im)));
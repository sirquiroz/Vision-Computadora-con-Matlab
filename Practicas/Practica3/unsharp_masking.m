function sharp = unsharp_masking(img, mascara, const)

pasa_bajo = imfilter(img, mascara,"replicate");

pasa_alto = img - pasa_bajo;

sharp = uint8(img + pasa_alto * const);


endfunction
function punto2(im, mascara_rect)

rect = convol(im, mascara_rect);

fprintf('Mascara rectangular\n');
mascara_rect
fprintf('\n')

figure
subplot(1,2, 1)
imshow(im)
title("Imagen Original")
subplot(1,2,2)
imshow(rect)
title("Imagen convolucionada con filtro pasabajos rectangular")


endfunction
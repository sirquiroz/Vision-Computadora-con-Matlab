function punto1(img, mascara_bajo3, mascara_bajo5)


 pasa_bajo3 = convol(img, mascara_bajo3);
 pasa_bajo5 = convol(img, mascara_bajo5);
 fprintf('mascara 3x3, bilineal.\n');
 mascara_bajo3
 fprintf('mascara 5x5, gauss.\n');
 mascara_bajo5
 fprintf('\n')

  pasa_alto3 = img - pasa_bajo3;

  pasa_alto5 = img - pasa_bajo5;

 figure
 subplot(3,2,1)
 imshow(img)
 title("Imagen original") 
 subplot(3,2,3)
 imshow(uint8(pasa_bajo3))
 title("Pasa bajo 3x3")
 subplot(3,2,4)
 imshow(uint8(pasa_bajo5))
 title("pasa bajo 5x5")
 subplot(3,2,5)
 imshow(uint8(pasa_alto3))
 title("pasa alto 3x3")
 subplot(3,2,6)
 imshow(uint8(pasa_alto5))
 title("pasa alto 5x5")

endfunction
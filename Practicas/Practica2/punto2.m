function punto2(img, c)
  
 figure
 subplot(2,2,1)
 imshow(img);
 title("Imagen original")
 subplot(2,2,2)
 imshow(punto2a(img, c))
 title(['Saturacion ' num2str(c)])
 subplot(2,2,3)
 imshow(punto2a(img, 240))
 title("Saturacion 240")
  subplot(2,2,4)
  imshow(punto2a(img,10))
 title("saturacion 10")

  
endfunction
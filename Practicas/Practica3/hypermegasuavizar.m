function hypermegasuavizar(img, pasa_bajo)
  figure
  imshow(img)
  figure
  aux = img;
  for i=1:6
    aux = conv2(aux, pasa_bajo)
    subplot(2,3, i)
    imshow(uint8(aux))
    title("suavizado X ")  
  
  endfor
endfunction


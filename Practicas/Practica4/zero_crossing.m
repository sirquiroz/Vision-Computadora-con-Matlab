function bordes = zero_crossing(img)

  rows = size(img)(1)
  cols = size(img)(2)
  bordes = zeros(rows,cols);
  for i = 1:rows-1
    for j = 1:cols-1
      neighbors = [img(i-1, j) img(i+1, j) img(i, j-1) img(i, j+1)];
      
      if(find(neighbors*img(i,j) <= 0) &&  !find(neighbors <= img(i,j)))
        bordes(i,j) = 255
      endif
    endfor    
  endfor
endfunction
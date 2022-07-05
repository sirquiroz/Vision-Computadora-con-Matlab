function res = convol(img, mask)
  
  mask_size = size(mask);
  img_size = size(img);
  res = img;
  
  padded_img = add_padding(img, mask_size);
  r = floor(mask_size(1)/2);
  c = floor(mask_size(2)/2);
  
  for i = r+1 : size(padded_img)(1) - r
    for j = c+1 : size(padded_img)(2) - c
      submatrix = padded_img(i-r:i+r, j-c:j+c);
      submatrix = submatrix .* mask;
      res(i-r,j-c) = sum(sum(submatrix));
    endfor    
  endfor
  
endfunction
function res = median_filer(img, mask)

  mask_size = size(mask);
  img_size = size(img);
  res = img;
  
  padded_img = add_padding(img, mask_size);
  r = floor(mask_size(1)/2);
  c = floor(mask_size(2)/2);
  
  unroll_size = mask_size(1)*mask_size(2);
  
  for i = r+1 : size(padded_img)(1) - r
    for j = c+1 : size(padded_img)(2) - c
      submatrix = padded_img(i-r:i+r, j-c:j+c);
      aux = reshape(submatrix, unroll_size, 1);      
      res(i-r,j-c) = median(aux);
    endfor    
  endfor
 
endfunction
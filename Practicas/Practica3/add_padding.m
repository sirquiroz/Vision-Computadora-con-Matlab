function res = add_padding(img, mask_size)
  r = floor(mask_size(1)/2);
  c = floor(mask_size(2)/2);
  
  upper_padding = uint8(ones(r,1)*double(img(1,:)));
  lower_padding = uint8(ones(r,1)*double(img(size(img)(1),:)));
 
  res = [ upper_padding ; img; lower_padding ];
 
  left_padding = uint8(double(res(:,1))*ones(c,1)');
  right_padding = uint8(double(res(:,size(res)(2)))*ones(c,1)');
  
  res = [ left_padding res right_padding ];

  imshow(res)
 endfunction
  
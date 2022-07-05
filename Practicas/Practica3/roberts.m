function roberted_image = roberts(img)
  kernel_x = [ 1 0; 0 -1];
  kernel_y = [ 0 1; -1 0];
  x_conv = conv2(img, kernel_x, "same");
  y_conv = conv2(img, kernel_y, "same");
  
  roberted_image = uint8(sqrt(x_conv.^2 + y_conv.^2));
endfunction
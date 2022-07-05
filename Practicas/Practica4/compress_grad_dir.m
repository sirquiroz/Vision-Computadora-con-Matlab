function compressed = compress_grad_dir(grad_dir)
  
  compressed = ones(size(grad_dir));
  compressed( abs(grad_dir) <= (1/8)* pi) = 0;
  compressed( grad_dir < (3/8)*pi & grad_dir > pi/8) = 45;
  compressed( abs(grad_dir) >= (3/8)* pi) = 90;
  compressed( -grad_dir <(3/8)*pi & -grad_dir > pi/8) = 135;  
endfunction
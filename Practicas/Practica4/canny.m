function edge = canny(img, gradient_method,size_gauss, low_threshold, high_threshold)
 if(size_gauss)
  gauss = fspecial("gaussian", size_gauss);
  aux = imfilter(img, gauss);
 else
  aux = img;
 endif
 [aux, grad_dir] = intesity_gradient(aux, gradient_method);
 grad_dir = compress_grad_dir(grad_dir);
 aux = non_maximum(aux,grad_dir);

logic_borders = hysteresis(aux, grad_dir, low_threshold, high_threshold);

edge = aux.*(logic_borders);
endfunction
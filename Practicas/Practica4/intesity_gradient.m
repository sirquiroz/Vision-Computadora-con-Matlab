function [magnitude, grad_dir] = intesity_gradient(img, gradient_method)
hor = [1 2 1; 0 0 0; -1 -2 -1];
ver = hor';
switch (gradient_method)
  case "sobel"
    hor = [1 2 1; 0 0 0; -1 -2 -1];
    ver = -1*hor';
  case "prewitt"
    hor = [-1 -1 -1; 0 0 0; 1 1 1]; 
    vert =  -1*hor';
  case "roberts"
    hor = [ 1 0; 0 -1];
    vert = [ 0 1; -1 0];
endswitch
gx = conv2(img, ver, 'same');
gy = conv2(img, hor, 'same');

magnitude = sqrt(gx.^2 + gy.^2);
grad_dir = atan(gy./gx);
grad_dir(gy == 0.00 & gx == 0.0) = 0;
endfunction
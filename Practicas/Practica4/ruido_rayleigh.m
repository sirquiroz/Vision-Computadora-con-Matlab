function ruido = ruido_rayleigh(img, eps)
  img = double(img)/255;
  gen = eps*sqrt(-2*log(rand(size(img))));
  ruido = gen .* img;
  ruido = uint8(ruido*255);
endfunction
function ruido = ruido_gaussiano(img, sigma, mu)

img = double(img)/255;
gen = mu + (sigma-mu)*randn(size(img));
ruido = gen + img;
ruido = uint8(ruido*255);
endfunction
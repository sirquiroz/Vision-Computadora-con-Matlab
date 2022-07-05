function punto2(lena, lena_g, lena_r,test, test_g, test_r, threshold, size_square)

lena_ls = laplaciano_simple(lena);
lena_gls = laplaciano_simple(lena_g);
lena_rls = laplaciano_simple(lena_r);
test_gls = laplaciano_simple(test_g);
test_rls = laplaciano_simple(test_r);
test_ls = laplaciano_simple(test);

gauss = [1 4 6 4 1; 4 16 24 16 4;6 24 36 24 6; 4 16 24 16 4; 1 4 6 4 1] * (1/256);
lena_lg = laplaciano_simple(conv2(lena, gauss, 'same'));
lena_glg = laplaciano_simple(conv2(lena_g, gauss, 'same'));
lena_rlg = laplaciano_simple(conv2(lena_r, gauss, 'same'));
test_glg = laplaciano_simple(conv2(test_g, gauss, 'same'));
test_rlg = laplaciano_simple(conv2(test_r, gauss, 'same'));
test_lg = laplaciano_simple(conv2(test, gauss, 'same'));

[lena_lvar, var_aux] = eval_var(lena_ls, threshold, size_square);
[lena_glvar, var_aux] = eval_var(lena_gls, threshold, size_square);
[lena_rlvar, var_aux] = eval_var(lena_rls, threshold, size_square);
[test_glvar, var_aux] = eval_var(test_gls, threshold, size_square);
[test_rlvar, var_aux] = eval_var(test_rls, threshold, size_square);
[test_lvar, var_aux] = eval_var(test_ls, threshold, size_square);


  figure
  subplot(2, 2, 1)
  imshow(lena)
  title('Lena')
  subplot(2, 2, 2)
  imshow(lena_ls)
  title('Laplaciano simple')
  subplot(2, 2, 3)
  imshow(lena_lvar)
  title('Laplaciano con evaluacion de varianza')
  subplot(2, 2, 4)
  imshow(lena_lg)
  title('Laplaciano con suavizado de borde')
  
  fprintf('\taprete enter para canbiar a las imagenes con ruido Gaussiano')
  pause;
  close all;
  
  figure
  subplot(2, 2, 1)
  imshow(lena_g)
  title('Lena ruido Gaussiano')
  subplot(2, 2, 2)
  imshow(lena_gls)
  title('Laplaciano simple')
  subplot(2, 2, 3)
  imshow(lena_glvar)
  title('Laplaciano con evaluacion de varianza')
  subplot(2, 2, 4)
  imshow(lena_glg)
  title('Laplaciano con suavizado de borde')
  
  fprintf('\taprete enter para canbiar a las imagenes con ruido Rayleigh')
  pause;
  close all;

  figure
  subplot(2, 4, 1)
  imshow(lena_r)
  title('Lena ruido rayleigh')
  subplot(2, 4, 2)
  imshow(lena_rls)
  title('Laplaciano simple')
  subplot(2, 4, 3)
  imshow(lena_rlvar)
  title('Laplaciano con evaluacion de varianza')
  subplot(2, 4, 4)
  imshow(lena_rlg)
  title('Laplaciano con suavizado de borde')
  
  fprintf('\taprete enter para canbiar a las imagenes test')
  pause;
  close all;

  figure
  subplot(2, 2, 1)
  imshow(test)
  title('Test')
  subplot(2, 2, 2)
  imshow(test_ls)
  title('Laplaciano simple')
  subplot(2, 2, 3)
  imshow(test_lvar)
  title('Laplaciano con evaluacion de varianza')
  subplot(2, 2, 4)
  imshow(test_lg)
  title('Laplaciano con suavizado de borde')
  
  fprintf('\taprete enter para canbiar a las imagenes con ruido Gaussiano')
  pause;
  close all;

  
  figure
  subplot(2, 2, 1)
  imshow(test_g)
  title('Test ruido Gaussiano')
  subplot(2, 2, 2)
  imshow(test_gls)
  title('Laplaciano simple')
  subplot(2, 2, 3)
  imshow(test_glvar)
  title('Laplaciano con evaluacion de varianza')
  subplot(2, 2, 4)
  imshow(test_glg)
  title('Laplaciano con suavizado de borde')
  
  fprintf('\taprete enter para canbiar a las imagenes con ruido Rayleigh')
  pause;
  close all;

  figure
  subplot(2, 2, 1)
  imshow(test_r)
  title('Test ruido rayleigh')
  subplot(2, 2, 2)
  imshow(test_rls)
  title('Laplaciano simple')
  subplot(2, 2, 3)
  imshow(test_rlvar)
  title('Laplaciano con evaluacion de varianza')
  subplot(2, 2, 4)
  imshow(test_rlg)
  title('Laplaciano con suavizado de borde')
  fprintf('\taprete enter para terminar el punto 2')
  
  pause;
  close all;

  endfunction

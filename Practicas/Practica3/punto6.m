function punto6(img_lena, img_test, mascara_baja3)
  [suavizado_lena, sharp_lena, suavizado_test, sharp_test] = punto3(img_lena, img_test, mascara_baja3);
  close all;
  mask = ones(3);
  figure
  subplot(1,3,1)
  imshow(img_lena)
  title('lena original')
  subplot(1,3,2)
  imshow(suavizado_lena)
  title('lena suavizado')
  subplot(1,3,3)
  imshow(sharp_lena)
  title('lena sharp')
  fprintf('apretar enter\n')
  pause
  close all
  lena_condim1 = salt_pepper(img_lena, 0.1, 0.9);
  suav_lena_condim1 = salt_pepper(suavizado_lena, 0.1,0.9);
  sharp_lena_condim1 = salt_pepper(sharp_lena, 0.1,0.9);
  
  lena_condim1_f = median_filer(lena_condim1, mask);
  suav_lena_condim1_f = median_filer(suav_lena_condim1, mask);
  sharp_lena_condim1_f = median_filer(sharp_lena_condim1, mask);
  
  figure
  subplot(2,3,1)
  imshow(lena_condim1)
  title('lena con ruido salt pepeer 0.1, 0.9')
  subplot(2,3,2)
  imshow(suav_lena_condim1)
  title('lena suavizado con ruido salt pepper 0.1, 0.9')
  subplot(2,3,3)
  imshow(sharp_lena_condim1)
  title('lena sharp con ruido salt pepper 0.1, 0.9')
  subplot(2,3,4)
  imshow(lena_condim1_f)
  title('lena con ruido salt pepeer 0.1, 0.9 filtrada')
  subplot(2,3,5)
  imshow(suav_lena_condim1_f)
  title('lena suavizado con ruido salt pepper 0.1, 0.9 filtrada')
  subplot(2,3,6)
  imshow(sharp_lena_condim1_f)
  title('lena sharp con ruido salt pepper 0.1, 0.9 filtrada')
  fprintf('apretar enter\n')
  pause
  close all  

  lena_condim2 = salt_pepper(img_lena, 0.05, 0.95);
  suav_lena_condim2 = salt_pepper(suavizado_lena, 0.05,0.95);
  sharp_lena_condim2 = salt_pepper(sharp_lena, 0.05,0.95);

  
  lena_condim2_f = median_filer(lena_condim1, mask);
  suav_lena_condim2_f = median_filer(suav_lena_condim1, mask);
  sharp_lena_condim2_f = median_filer(sharp_lena_condim1, mask);
  figure
  subplot(2,3,1)
  imshow(lena_condim2)
  title('lena con ruido salt pepeer 0.05, 0.95')
  subplot(2,3,2)
  imshow(suav_lena_condim2)
  title('lena suavizado con ruido salt pepper 0.05, 0.95')
  subplot(2,3,3)
  imshow(sharp_lena_condim2)
  title('lena sharp con ruido salt pepper 0.05, 0.95')
  subplot(2,3,4)
  imshow(lena_condim2_f)
  title('lena con ruido salt pepeer 0.05, 0.85 filtrada')
  subplot(2,3,5)
  imshow(suav_lena_condim2_f)
  title('lena suavizado con ruido salt pepper 0.05, 0.95 filtrada')
  subplot(2,3,6)
  imshow(sharp_lena_condim2_f)
  title('lena sharp con ruido salt pepper 0.05, 0.95 filtrada')
  
  printf('Apretar enter para ver la proxima coleccion de imagen\n')  
  pause;
  close all;
  
  figure
  subplot(1,3,1)
  imshow(img_test)
  title('test original')
  subplot(1,3,2)
  imshow(suavizado_test)
  title('test suavizado')
  subplot(1,3,3)
  imshow(sharp_test)
  title('test sharp')

  fprintf('apretar enter\n')
  pause
  close all  

  test_condim1 = salt_pepper(img_test, 0.1, 0.9);
  suav_test_condim1 = salt_pepper(suavizado_test, 0.1,0.9);
  sharp_test_condim1 = salt_pepper(sharp_test, 0.1,0.9);
  
  test_condim1_f = median_filer(test_condim1, mask);
  suav_test_condim1_f = median_filer(suav_test_condim1, mask);
  sharp_test_condim1_f = median_filer(sharp_test_condim1, mask);
  
  figure
  subplot(2,3,1)
  imshow(test_condim1)
  title('test con ruido salt pepeer 0.1, 0.9')
  subplot(2,3,2)
  imshow(suav_test_condim1)
  title('test suavizado con ruido salt pepper 0.1, 0.9')
  subplot(2,3,3)
  imshow(sharp_test_condim1)
  title('test sharp con ruido salt pepper 0.1, 0.9')
  subplot(2,3,4)
  imshow(test_condim1_f)
  title('test con ruido salt pepeer 0.1, 0.9 filtrada')
  subplot(2,3,5)
  imshow(suav_test_condim1_f)
  title('test suavizado con ruido salt pepper 0.1, 0.9 filtrada')
  subplot(2,3,6)
  imshow(sharp_test_condim1_f)
  title('test sharp con ruido salt pepper 0.1, 0.9 filtrada')
    
  fprintf('apretar enter\n')
  pause
  close all  

  lena_condim2 = salt_pepper(img_lena, 0.05, 0.95);
  suav_lena_condim2 = salt_pepper(suavizado_lena, 0.05,0.95);
  sharp_lena_condim2 = salt_pepper(sharp_lena, 0.05,0.95);

  
  lena_condim2_f = median_filer(lena_condim1, mask);
  suav_lena_condim2_f = median_filer(suav_lena_condim1, mask);
  sharp_lena_condim2_f = median_filer(sharp_lena_condim1, mask);
  figure
  subplot(2,3,1)
  imshow(lena_condim2)
  title('lena con ruido salt pepeer 0.05, 0.95')
  subplot(2,3,2)
  imshow(suav_lena_condim2)
  title('lena suavizado con ruido salt pepper 0.05, 0.95')
  subplot(2,3,3)
  imshow(sharp_lena_condim2)
  title('lena sharp con ruido salt pepper 0.05, 0.95')
  subplot(2,3,4)
  imshow(lena_condim2_f)
  title('lena con ruido salt pepeer 0.05, 0.85 filtrada')
  subplot(2,3,5)
  imshow(suav_lena_condim2_f)
  title('lena suavizado con ruido salt pepper 0.05, 0.95 filtrada')
  subplot(2,3,6)
  imshow(sharp_lena_condim2_f)
  title('lena sharp con ruido salt pepper 0.05, 0.95 filtrada')
  
  printf('Apretar enter para ver la proxima coleccion de imagen\n')
  pause;
  close all;
  
  
  
  test_condim1 = salt_pepper(img_test, 0.05, 0.95);
  suav_test_condim1 = salt_pepper(suavizado_test, 0.05,0.95);
  sharp_test_condim1 = salt_pepper(sharp_test, 0.05,0.95);
  
  test_condim1_f = median_filer(test_condim1, mask);
  suav_test_condim1_f = median_filer(suav_test_condim1, mask);
  sharp_test_condim1_f = median_filer(sharp_test_condim1, mask);
  figure
  subplot(2,3,1)
  imshow(test_condim1)
  title('test con ruido salt pepeer 0.05, 0.95')
  subplot(2,3,2)
  imshow(suav_test_condim1)
  title('test suavizado con ruido salt pepper 0.05, 0.95')
  subplot(2,3,3)
  imshow(sharp_test_condim1)
  title('test sharp con ruido salt pepper 0.05, 0.95')
  subplot(2,3,4)
  imshow(test_condim1_f)
  title('test con ruido salt pepeer 0.05, 0.95 filtrada')
  subplot(2,3,5)
  imshow(suav_test_condim1_f)
  title('test suavizado con ruido salt pepper 0.05, 0.95 filtrada')
  subplot(2,3,6)
  imshow(sharp_test_condim1_f)
  title('test sharp con ruido salt pepper 0.05, 0.95 filtrada')
  printf('Apretar enter para finalizar el punto 6\n')
  pause
  close all;
endfunction
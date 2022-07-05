function punto3(lena, lena_g, lena_r, test,  test_g, test_r)
  imagenes_lena = zeros([size(lena) 3]);
  imagenes_lena(:,:,1) = lena;
  imagenes_lena(:,:,2) = lena_g;
  imagenes_lena(:,:,3) = lena_r;
  imagenes_test = zeros([size(test) 3]);
  imagenes_test(:,:,1) = test;
  imagenes_test(:,:,2) = test_g;
  imagenes_test(:,:,3) = test_r;
  
  name_lena = ['lena'; 'lena_gauss'; 'lena_rayleigh']; 
  name_test = ['test'; 'test_gauss'; 'test_rayleigh'];
  intervals = [30, 50, 70, 80];
  starts = [20, 40, 60, 80, 100, 120];
  size_gauss = [3 5];
%  for i = 1 : size(imagenes_lena)(3)
%    for interval = intervals
%      for start = starts
%        for gauss = size_gauss
%          edge = canny(imagenes_lena(:,:,i), 'sobel', gauss, start, start+interval);
%          file_name = [name_lena(i,:)(name_lena(i,:) != ' ') '_smoothed' num2str(gauss) '_start' num2str(start) '_intervalsize' num2str(interval) '.png']
%          imwrite(edge, file_name);
%        endfor
%      endfor
%    endfor
%  endfor

  
%  for i = 1 : size(imagenes_test)(3)
%    for interval = intervals
%      for start = starts
%        for gauss = size_gauss
%          edge = canny(imagenes_test(:,:,i), 'sobel', gauss, start, start+interval);
%          file_name = [name_test(i,:)(name_test(i,:) != ' ') '_smoothed' num2str(gauss) '_start' num2str(start) '_intervalsize' num2str(interval) '.png']
%          imwrite(edge, file_name);
%          endfor
%      endfor
%    endfor
%  endfor

  edge = canny(imagenes_lena(:,:,1), 'sobel', 3, 40, 70);
  
  edge_g = canny(imagenes_lena(:,:,2), 'sobel', 3, 120, 200);
  
  edge_r = canny(imagenes_lena(:,:,3), 'sobel', 3, 20, 50);
  
  figure
  subplot(2,2,1)
  imshow(edge)
  file_name = ['lena ' 'tamaño pasabajo' num2str(3) ' umin' num2str(40) ' umax' num2str(70) ];
  title(file_name)
  subplot(2,2,2)
  imshow(edge_g)
  file_name = ['lena ruido gauss ' 'tamaño pasabajo' num2str(3) ' umin' num2str(120) ' umax' num2str(200) ];
  title(file_name)
  subplot(2,2,3)
  imshow(edge_r)
  file_name = ['lena ruido ray ' 'tamaño pasabajo' num2str(3) ' umin' num2str(20) ' umax' num2str(50) ];
  title(file_name)
  fprintf('\tApretar enter para pasar al otro conjunto de imágenes')  
  pause
  close all
  edge = canny(imagenes_test(:,:,1), 'sobel', 5, 20, 50);
  
  edge_g = canny(imagenes_test(:,:,2), 'sobel', 3, 120, 200);
  
  edge_r = canny(imagenes_test(:,:,3), 'sobel', 3, 20, 50);

  figure
  subplot(2,2,1)
  imshow(edge)
  file_name = ['test ' 'tamaño pasabajo' num2str(5) ' umin' num2str(40) ' umax' num2str(70) ];
  title(file_name)
  subplot(2,2,2)
  imshow(edge_g)
  file_name = ['test ruido gauss ' 'tamaño pasabajo' num2str(3) ' umin' num2str(120) ' umax' num2str(200) ];
  title(file_name)
  subplot(2,2,3)
  imshow(edge_r)
  file_name = ['test ruido ray ' 'tamaño pasabajo' num2str(3) ' umin' num2str(20) ' umax' num2str(50) ];
  title(file_name)
  fprintf('\tApretar enter para terminar el punto\n')  
  pause
  close all

endfunction
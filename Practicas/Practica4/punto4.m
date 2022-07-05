function punto4(lena, im_test)
  gausses = [3 5];
  vecinity = [3 5];
  mets = [ 1 2 3 4]
  mets_name = ["harris"; "triggs"; "szeliski"; "tomasi"];
  factor = 1;
%  for i = mets  
%    if(i == 2)
%      factor = 0.5;
%    endif
%    for j = gausses
%        R = corner_detection(img, i, double(factor)/double(i), j);
%      for k = vecinity
%          sol = taking_local_maximums(R,80, k);
%          figure
%          imshow(sol);
%          tit = [mets_name(i,:) "fctr:"  num2str(factor) " gauss:" num2str(j) " vec:" num2str(k)]
%          title(tit)
%      endfor
%    endfor
%    printf("Apretar enter para seguir con los otros metodos");
%    pause;
%    close all;
%  endfor
lena_col = zeros([size(lena) 3]);
lena_col(:,:,1) = lena;
lena_col(:,:,2) = lena;
lena_col(:,:,3) = lena;
lena_col = uint8(lena_col);
test_col = zeros([size(im_test) 3]);
test_col(:,:,1) = im_test;
test_col(:,:,2) = im_test;
test_col(:,:,3) = im_test;
test_col = uint8(test_col);

remark = zeros(size(lena_col));
remark = uint8(remark);
  for i = mets
    factor = 1;
    k = 5;
    j = 3;
    if(i < 3)
      j = 5;
    endif
    if(i == 2)
      factor = 0.5;
    endif
    R = corner_detection(lena, i, double(factor)/double(i), j);
    sol = taking_local_maximums(R,80, k);
    figure
    remark(:,:,1) = lena_col(:,:,1);
    remark(:,:,2) = lena_col(:,:,2) - sol;
    remark(:,:,3) = lena_col(:,:,3) - sol;
    imshow(uint8(remark));
    tit = [mets_name(i,:) "fctr:"  num2str(factor) " gauss:" num2str(j) " vec:" num2str(k)]
    title(tit)
    printf("Apretar enter para seguir con los otros metodos");
    pause;
    close all;
  endfor

  remark = zeros(size(test_col));
remark = uint8(remark);
  for i = mets
    factor = 1;
    k = 5;
    j = 3;
    if(i < 3)
      j = 5;
    endif
    if(i == 2)
      factor = 0.5;
    endif
    R = corner_detection(im_test, i, double(factor)/double(i), j);
    sol = uint8(taking_local_maximums(R,80, k));
    figure
    remark(:,:,1) = test_col(:,:,1)+sol;
    remark(:,:,2) = test_col(:,:,2) - sol;
    remark(:,:,3) = test_col(:,:,3) - sol;
    imshow(uint8(remark));
    tit = [mets_name(i,:) "fctr:"  num2str(factor) " gauss:" num2str(j) " vec:" num2str(k)]
    title(tit)
    figure
    imshow(sol)
    printf("Apretar enter para seguir con los otros metodos");
    pause;
    close all;
  endfor
 endfunction
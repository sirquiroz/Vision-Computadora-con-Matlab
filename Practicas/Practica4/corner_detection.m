function R = corner_detection(img, method, factor_method, size_gauss)
    hor = [1 2 1; 0 0 0; -1 -2 -1];
    ver = -1* hor';

    gx = conv2(img, ver, 'same');
    gy = conv2(img, hor, 'same');
    
    Ixy = gx .* gy;
    Ixx = gx.^2;
    Iyy = gy.^2;
    ventana_gauss = fspecial("gaussian", [size_gauss size_gauss]);
    
    Ixy = conv2(Ixy, ventana_gauss, 'same');
    Ixx = conv2(Ixx, ventana_gauss, 'same');
    Iyy = conv2(Iyy, ventana_gauss, 'same');    
    
    Ms = zeros([size(img) 2 2]);
    
    Ms(:,:,1,1) = Ixx;
    Ms(:,:,2,1) = Ixy;
    Ms(:,:,1,2) = Ixy;
    Ms(:,:,2,2) = Iyy;
    
    lambdas = zeros([size(img) 2 1]);
    
    for i = 1 : size(img)(1)
      for j = 1 : size(img)(2)
        lambdas(i,j, :, :) = sort(eig(reshape(Ms(i,j, :, :), [2 2]),'vector'));
      endfor
    endfor
    
    R = zeros(size(img));
    switch(method)
        case 1
             R = lambdas(:,:,1, 1) .* lambdas(:,:, 2, 1) - factor_method * (lambdas(:,:, 1, 1) + lambdas(:,:, 2, 1));
        case 2
            R = (lambdas(:,:, 1, 1) - factor_method * lambdas(:,:, 2, 1));
        case 3
            R = lambdas(:,:, 1, 1) .* lambdas(:,:,2, 1) ./(lambdas(:,:, 1, 1) + lambdas(:,:, 2, 1));
        case 4
            R = lambdas(:,:, 1, 1);
    endswitch

endfunction  
       
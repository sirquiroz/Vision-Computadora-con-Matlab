function punto4(img_lena, img_test, mascara)

lena_ruido_gauss1 = ruido_gaussiano(img_lena, 1, 0);
lena_ruido_gauss2 = ruido_gaussiano(img_lena, 0.5, 0);
lena_ruido_gauss3 = ruido_gaussiano(img_lena, 0.01, 0);

test_ruido_gauss1 = ruido_gaussiano(img_test, 1, 0);
test_ruido_gauss2 = ruido_gaussiano(img_test, 0.5, 0);
test_ruido_gauss3 = ruido_gaussiano(img_test, 0.01, 0);

lena_ruido_rayleigh1 = ruido_rayleigh(img_lena, 1);
lena_ruido_rayleigh2 = ruido_rayleigh(img_lena, 0.5);
lena_ruido_rayleigh3 = ruido_rayleigh(img_lena, 2);

test_ruido_rayleigh1 = ruido_rayleigh(img_test, 1);
test_ruido_rayleigh2 = ruido_rayleigh(img_test, 0.5);
test_ruido_rayleigh3 = ruido_rayleigh(img_test, 2);

fprintf('\ta.\n');
fprintf('\t\tsigma 1.\n');
[a, b,c,d] = punto3(lena_ruido_gauss1, test_ruido_gauss1, mascara);

fprintf('\t\tsigma 0.5.\n');
[a, b,c,d] = punto3(lena_ruido_gauss2, test_ruido_gauss2, mascara);

fprintf('\t\tsigma 0.01.\n');
[a, b,c,d] = punto3(lena_ruido_gauss3, test_ruido_gauss3, mascara);
fprintf('\tb.\n');

fprintf('\t\tsigma 1.\n');
[a, b,c,d] = punto3(lena_ruido_rayleigh1, test_ruido_rayleigh1, mascara);

fprintf('\t\tsigma 0.5.\n');
[a, b,c,d] = punto3(lena_ruido_rayleigh2, test_ruido_rayleigh2, mascara);

fprintf('\t\tsigma 2.\n');
[a, b,c,d] = punto3(lena_ruido_rayleigh3, test_ruido_rayleigh3, mascara);

endfunction
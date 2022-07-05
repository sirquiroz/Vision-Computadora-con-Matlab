function punto8(img_lena, img_test)

  lena_gauss = ruido_gaussiano(img_lena, 0.2,0);
	lena_gauss_roberts = roberts(lena_gauss);
	lena_gauss_prewitt = prewitt(lena_gauss);
	lena_gauss_sobel = sobel(lena_gauss);

  lena_rayleigh =  ruido_rayleigh(img_lena, 1);
	lena_rayleigh_roberts = roberts(lena_rayleigh);
	lena_rayleigh_prewitt = prewitt(lena_rayleigh);
	lena_rayleigh_sobel = sobel(lena_rayleigh);

  lena_salted = salt_pepper(img_lena, 0.1, 0.9);
	lena_salted_roberts = roberts(lena_salted);
	lena_salted_prewitt = prewitt(lena_salted);
	lena_salted_sobel = sobel(lena_salted);

  test_gauss = ruido_gaussiano(img_test, 0.2,0);
	test_gauss_roberts = roberts(test_gauss);
	test_gauss_prewitt = prewitt(test_gauss);
	test_gauss_sobel = sobel(test_gauss);

	test_rayleigh = ruido_rayleigh(img_test, 1);
  test_rayleigh_roberts = roberts(test_rayleigh);
	test_rayleigh_prewitt = prewitt(test_rayleigh);
	test_rayleigh_sobel = sobel(test_rayleigh);

  test_salted = salt_pepper(img_test, 0.1, 0.9);
	test_salted_roberts = roberts(test_salted);
	test_salted_prewitt = prewitt(test_salted);
	test_salted_sobel = sobel(test_salted);


	figure
	subplot(2,2,1)
	imshow(uint8(lena_gauss))
	title("Lena Gauss")
	subplot(2,2,2)
	imshow(lena_gauss_roberts)
	title("Lena Gauss Roberts")
	subplot(2,2,3)
	imshow(lena_gauss_prewitt)
	title("Lena Gauss Prewitt")
	subplot(2,2,4)
	imshow(lena_gauss_sobel)
	title("Lena Gauss Sobel")

	printf("Apreta enter para el proximo conjunto de imagenes\n");
	pause;
	close all;

	figure
  subplot(2,2,1)
	imshow(uint8(lena_rayleigh))
	title("Lena Rayleigh")
	subplot(2,2,2)
	imshow(lena_rayleigh_roberts)
	title("Lena rayleigh Roberts")
	subplot(2,2,3)
	imshow(lena_rayleigh_prewitt)
	title("Lena rayleigh Prewitt")
	subplot(2,2,4)
	imshow(lena_rayleigh_sobel)
	title("Lena rayleigh Sobel")

	printf("Apreta enter para el proximo conjunto de imagenes\n");
	pause;
	close all;

	figure
  subplot(2,2,1)
	imshow(lena_salted)
	title("lena salted")
	subplot(2,2,2)
	imshow(lena_salted_roberts)
	title("lena Salt & Pepper Roberts")
	subplot(2,2,3)
	imshow(lena_salted_prewitt)
	title("lena Salt & Pepper Prewitt")
	subplot(2,2,4)
	imshow(lena_salted_sobel)
	title("lena Salt & Pepper Sobel")

 	printf("Apreta enter para el proximo conjunto de imagenes\n");
	pause;
	close all;

	figure
  subplot(2,2,1)
	imshow(test_gauss)
	title("test gauss")
  subplot(2,2,2)
	imshow(test_gauss_roberts)
	title("test Gauss Roberts")
	subplot(2,2,3)
	imshow(test_gauss_prewitt)
	title("test Gauss Prewitt")
	subplot(2,2,4)
	imshow(test_gauss_sobel)
	title("test Gauss Sobel")

	printf("Apreta enter para el proximo conjunto de imagenes\n");
	pause;
	close all;

	figure
  subplot(2,2,1)
	imshow(test_rayleigh)
	title("test rayleigh")
	subplot(2,2,2)
	imshow(test_rayleigh_roberts)
	title("test rayleigh Roberts")
	subplot(2,2,3)
	imshow(test_rayleigh_prewitt)
	title("test rayleigh Prewitt")
	subplot(2,2,4)
	imshow(test_rayleigh_sobel)
	title("test rayleigh Sobel")

	printf("Apreta enter para el proximo conjunto de imagenes\n");
	pause;
	close all;

	figure
  subplot(2,2,1)
	imshow(test_salted)
	title("test salted")
	subplot(2,2,2)
	imshow(test_salted_roberts)
	title("test Salt & Pepper Roberts")
	subplot(2,2,3)
	imshow(test_salted_prewitt)
	title("test Salt & Pepper Prewitt")
	subplot(2,2,4)
	imshow(test_salted_sobel)
	title("test Salt & Pepper Sobel")
  
	printf("Para terminar el ejercicio");
	pause;
	close all;

endfunction
function punto1(img, c_min, c_max)

 im_res = punto1a(img, c_min);

 im_res2 = punto1a(img, c_max);
 figure
 subplot(2,2,1)
 imshow(img);
 title("Imagen original")
 subplot(2,2,3)
 imshow(im_res)
 title(['Saturacion por ' num2str(c_min)])
 subplot(2,2,4)
 imshow(im_res2)
 title(['Saturacion por ' num2str(c_max)])

 
 [im_sum, im_cuad, im_log] = punto1b(img, c_max);
figure
subplot(2,2,1)
imshow(img)
 title("Imagen original")
subplot(2,2,2)
imshow(im_sum)
 title(['saturacion mas ' num2str(c_max)])
subplot(2,2,3)
imshow(im_cuad)
 title(['saturacion al cuadrado por ' num2str(c_max)])
subplot(2,2,4)
imshow(im_log)
 title(['logaritmo de saturacion por ' num2str(c_max)])

endfunction
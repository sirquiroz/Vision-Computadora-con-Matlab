function bit_plane(image)
%
%, bits, row, cols, size_pixel
%image its the image you want to see the bitplanes
%bits will be how many bits you want to see.
%rows is how manty rows in your subplot
%col is how many col your subplot will have
%size_pixel is the amounts of bit a pixel has.

  %if(row*cols != size_pixel-bits+1)
  %disp("subplot is not of the correct dimensions, or smth row*cols != size_pixel-bits+1")
  
  %endif
  figure;
  imshow(image)
  title("Imagen Original")
  %figure
  %for i = size_pixel:size_pixel - bits + 1
  %  B = bitget(image, i)
  % subplot(row,cols,i)
  %endfor
  
  if size(size(image))(2) == 2
    B1=bitget(image,1);
    B2=bitget(image,2);
    B3=bitget(image,3);
    B4=bitget(image,4);
    B5=bitget(image,5);
    B6=bitget(image,6);
    B7=bitget(image,7);
    B8=bitget(image,8);
  else
    B1 = zeros(size(image));
    B1(:,:,1) = bitget(image(:,:,1),1);
    B1(:,:,2) = bitget(image(:,:,2),1);
    B1(:,:,3) = bitget(image(:,:,3),1);
    
    B2 = zeros(size(image));
    B2(:,:,1) = bitget(image(:,:,1),2);
    B2(:,:,2) = bitget(image(:,:,2),2);
    B2(:,:,3) = bitget(image(:,:,3),2);
    
    B3 = zeros(size(image));
    B3(:,:,1) = bitget(image(:,:,1),3);
    B3(:,:,2) = bitget(image(:,:,2),3);
    B3(:,:,3) = bitget(image(:,:,3),3);
    
    B4 = zeros(size(image));
    B4(:,:,1) = bitget(image(:,:,1),4);
    B4(:,:,2) = bitget(image(:,:,2),4);
    B4(:,:,3) = bitget(image(:,:,3),4);
    
    B5 = zeros(size(image));
    B5(:,:,1) = bitget(image(:,:,1),5);
    B5(:,:,2) = bitget(image(:,:,2),5);
    B5(:,:,3) = bitget(image(:,:,3),5);
    
    B6 = zeros(size(image));
    B6(:,:,1) = bitget(image(:,:,1),6);
    B6(:,:,2) = bitget(image(:,:,2),6);
    B6(:,:,3) = bitget(image(:,:,3),6);
    
    B7 = zeros(size(image));
    B7(:,:,1) = bitget(image(:,:,1),7);
    B7(:,:,2) = bitget(image(:,:,2),7);
    B7(:,:,3) = bitget(image(:,:,3),7);
    
    B8 = zeros(size(image));
    B8(:,:,1) = bitget(image(:,:,1),8);
    B8(:,:,2) = bitget(image(:,:,2),8);
    B8(:,:,3) = bitget(image(:,:,3),8);

   
  endif
    
  figure
  subplot(2,4,8)
  imshow(B1)
  title("Bit plane 1")
  subplot(2,4,7)
  imshow(B2)
  title("Bit plane 2")
  subplot(2,4,6)
  imshow(B3)
  title("Bit plane 3")
  subplot(2,4,5)
  imshow(B1)
  title("Bit plane 4")
  subplot(2,4,4)
  imshow(B5)
  title("Bit plane 5")
  subplot(2,4,3)
  imshow(B6)
  title("Bit plane 6")
  subplot(2,4,2)
  imshow(B7)
  title("Bit plane 7")
  subplot(2,4,1)
  imshow(B8)
  title("Bit plane 8")
  
endfunction
function ecualizada = ecualizar_histograma(imagen, option)
	histograma = crear_histograma(imagen);

	fdch = cumsum(histograma);
 
  if(option == 1)
		ecualizada = uint8(floor(fdch(imagen)*255));
	elseif(option == 2)
     minimo = min(fdch);  
     fdch -= minimo;
     fdch /= (1-minimo);
     
     ecualizada = uint8(floor(fdch(imagen+1)*255 + 0.5));
	endif
  
 end
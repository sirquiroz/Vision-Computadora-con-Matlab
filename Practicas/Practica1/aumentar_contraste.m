function contrastada = aumentar_contraste(imagen, opcion)
    histograma_sin_ceros = find(crear_histograma(imagen));
    
    %% En  <R1 multiplican 0.75
    %% En > R1  * 1.75  // opcion 1
    %% en > R2  * 2    //  opcion 2
    %% En > R2   R2*2  + (r - R2) = 0.5 * R2 + r // opcion 3
    
    r1 = quantile(histograma_sin_ceros,0.25);
    r2 = quantile(histograma_sin_ceros,0.60);

    darker = 0.5;
    lighter = 1.75;
    ultalighter = 2.5;
    identidad_corrida = 0.75*r2;

    
    contrastada = imagen;
    
    contrastada(imagen < r1)*= darker;
    contrastada(imagen >= r1 && imagen < r2) *= lighter;
    
    if(opcion == 1)
      contrastada(imagen >= r2) *= lighter;
    elseif(opcion == 2)
      contrastada(imagen >= r2) *= ultalighter;
    else
      contrastada(imagen >= r2) += identidad_corrida;
    endif
endfunction
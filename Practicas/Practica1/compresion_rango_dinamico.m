function res = compresion_rango_dinamico(imagen)
  R = max(max(imagen));
  L = 256;
  
  c = (L-1) / log10(1 + R);
  
    res = uint8((log10(1 + imagen)*c));
endfunction
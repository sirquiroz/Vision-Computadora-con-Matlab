function sol = taking_local_maximums(R, threshold, size_vecinity)
  
  R_list = reshape(R, size(R)(1)*size(R)(2),1);
  percentile = prctile(R_list, threshold);
  aux = R > percentile;
   
  aux = R .* aux;
  
  margin = (size_vecinity-1)/2;
  max_mat = zeros(size(R));
  
  for i = 1 : size(R)(1)
    for j = 1 :size(R)(2)
    borde_der = uint32(min(i+margin, size(R)(1)));
    borde_izq = uint32(max(i-margin, 1));
    borde_inf = uint32(min(j+margin, size(R)(2)));
    borde_sup = uint32(max(j-margin, 1));
    aux_max = aux(borde_izq:borde_der, borde_sup:borde_inf);
    aux_max(margin+1,margin+1) = 0;
    max_mat(i,j) = max(max(aux_max));
    endfor
  endfor
  
  mask = aux > max_mat;
  sol = aux .*mask;
 
endfunction
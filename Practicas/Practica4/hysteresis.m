function umbraleada = hysteresis(no_maximos, grad_dir, u_min, u_max)
    borders = zeros(size(no_maximos));
    borders(no_maximos > u_max) = 1;
    intensity_cols = size(no_maximos)(1);
    
    aux = borders;
    
    fils = size(no_maximos)(1);
    cols = size(no_maximos)(2);
    
     v_i = 0;
    v_j = 0;
    do
      
      aux = borders;
      i_arrs = find(borders == 1);
      [i_s,j_s] = ind2sub(size(borders), i_arrs);
      for ind= 1 : size(i_arrs)(1)

        
        switch(grad_dir(i_s(ind, 1),j_s(ind, 1)))
          case {0}
            v_i = 0;
            v_j = 1;
          case {45}
            v_i = 1;
            v_j = -1;
          case {90}
            v_i = 1;
            v_j = 0;
          case {135}
            v_i = 1;
            v_j = 1;
         endswitch
        
        if(i_s(ind) + v_i <= fils && i_s(ind) + v_i > 0 && j_s(ind) + v_j <= cols && j_s(ind) + v_j > 0 )
          if(no_maximos(i_s(ind)+v_i,j_s(ind)+v_j) > u_min && borders(i_s(ind)+v_i,j_s(ind)+v_j) < 1)
            borders(i_s(ind)+v_i, j_s(ind)+v_j) = 1;
          endif
        endif
        
        if(i_s(ind) - v_i <= fils && i_s(ind) - v_i > 0 && j_s(ind) - v_j <= cols && j_s(ind) - v_j > 0)
          if(no_maximos(i_s(ind)-v_i,j_s(ind)-v_j) > u_min && borders(i_s(ind)-v_i,j_s(ind)-v_j) < 1)
            borders(i_s(ind)-v_i, j_s(ind)-v_j) = 1;
          endif
        endif
      endfor 
      borders(i_arrs) = 2;  
      
    until ( aux == borders )
         
    umbraleada = uint8(borders > 0);
endfunction
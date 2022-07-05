function rectificada = rectificacion(imagen) %pL1, pL2, pL3, pL4)
%    l1 = cross(pl1(1,:), pl1(2,:));
%    l2 = cross(pl2(1,:), pl2(2,:));
%    l3 = cross(pl3(1,:), pl3(2,:));
%    l4 = cross(pl4(1,:), pl4(2,:));
%    
%    pf1 = cross(l1, l2);
%    pf2 = cross(l3, l4);
%    
%   linf = cross(pf1, pf2);
%   
%   H = eye(3);
%   H(3, : ) = linf;
   
   [n,m] = size(imagen);
   
   coordenadas = ones(3, n*m);
   onesM = ones(1,n);
   numeros = 1:n;
   
   for i = 1:m 
     coordenadas(1,(i-1)*n+1:(i-1)*n + n) =numeros;
     coordenadas(2,(i-1)*n+1:(i-1)*n + n) = onesM*i;
   endfor
   rectificada = coordenadas;
   %rectificada = zeros(size(imagen));
endfunction
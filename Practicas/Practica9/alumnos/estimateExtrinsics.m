function [R,T] = estimateExtrinsics(us,ps,KK,kc)
% Estima la rotación R y la traslación T que mapea las coordenadas
% ps del tablero de ajedrez en el mundo a sus proyecciones us en el
% plano imagen.
% ps = puntos del mundo
% us = proyeciones en la imagen del puntos ps
% KK = matriz de calibración
% kc = parámetros de distorsión   NO USO ESTO EN NINGUN LADO; CAPAZ HAY QUE
% PREGUNTAR
    
    us = [us ones(length(us), 1)];
    u_m = [];
    
    for i=1:length(us)
       u_m = [ 
           u_m;
           (inv(KK)*(us(i,:)'))'
       ];
    end
    
    A = [];

    for i =1:length(us)
        A = [ A;
              0 -ps(i,1) u_m(i,2)*ps(i,1) 0 -ps(i,2) u_m(i,2)*ps(i,2) 0 -1 u_m(i,2);
              ps(i,1) 0 -u_m(i,1)*ps(i,1) ps(i,2) 0 -u_m(i,1)*ps(i,2) 1 0 -u_m(i,1)
            ];
    end
   
    [~,~,Vt] = svd(A);
    
    X = Vt(:,end);  %% X' = [ r11, r21, r31, r12, r22, r23,tx, ty, tz ];
    
    if X(end) < 0
        X = -1*X;
    end
    
    s = 2 / (norm(X(1:3,:)) + norm(X(4:6,:)));
    
    r1 = s*X(1:3,:);
    r3 = cross(r1, s*X(4:6,:));
    r2 = cross(r3, r1);
    
    R = [ r1 r2 r3 ];
    T = s*X(7:9,:);
end


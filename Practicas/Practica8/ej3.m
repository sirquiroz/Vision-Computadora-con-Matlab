function ej3(f, s, px, py, theta_x, theta_y, theta_z, C)
    
    % f -> Distancia focal de la camara
    % s -> Skewness
    % px, py -> centro de la imagen
    % theta_x -> Rotacion de la camara en el eje x
    % theta_y -> Rotacion de la camara en el eje y
    % theta_z -> Rotacion de la camara en el eje z
    % C -> Coordenadas de la camara en el mundo
    
    % K -> Matriz de calibracion
    K = [f s px;...
         0 f py;...
         0 0 1];
    
    % R -> Matriz de rotación de la camara
    R = zRotation(theta_z)*yRotation(theta_y)*xRotation(theta_x);
    Ri = inv(R);
    
    %P -> La matriz de la camara
    P = K*Ri*[eye(3) -C'];
    
    % X -> Coordenadas de los puntos en el mundo
    X = obtener_puntos();
    
    % X_p -> Coordenadas de los puntos respecto de la camara
    X_p = P*X;
    
    % X_in -> X_p en coordenadas inhomogenas
    X_in = [X_p(1,:)./X_p(3,:);X_p(2,:)./X_p(3,:)];
    
    dibujar_con_camara(C', R, P, X, X_p);
    
end


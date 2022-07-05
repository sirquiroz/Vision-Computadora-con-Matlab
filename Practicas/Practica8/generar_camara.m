function generar_camara(f, s, px, py, theta_x, theta_y, theta_z, C)
fprintf("Camara:\n");
fprintf("\tDistancia Focal: %.2f\n", f);
fprintf("\tSkewness: %.2f\n", s);
fprintf("\tCentro de la imagen:\n\t x = %.2f, y=%.2f\n", px, py);
fprintf("\tRotacion de la camara:\n\t x = %.2f, y=%.2f, z=%.2f\n", theta_x, theta_y, theta_z);
fprintf("\tPosicion de la camara: %3g\n", C);
ej3(f, s, px, py, theta_x, theta_y, theta_z, C)

end



function grad = non_maximum(intensity,grad_dir)


[intensity_cols,  intensity_rows] = size(intensity);

grad_dir = [ ones(intensity_cols, 1)  grad_dir  ones(intensity_cols, 1)];
grad_dir = [ ones(1, intensity_rows + 2) ; grad_dir ;  ones(1, intensity_rows + 2)];

intensity = [ zeros(intensity_cols, 1)  intensity  zeros(intensity_cols, 1)];
intensity = [ zeros(1, intensity_rows + 2);  intensity;  zeros(1, intensity_rows + 2)];
grad = zeros(size(intensity));
intensity_cols += 2;
intensity_rows += 2;
%%% Gradientes cero;

ceros = find(grad_dir == 0);
values = (intensity(ceros) > intensity(ceros + intensity_cols) & intensity(ceros) > intensity(ceros - intensity_cols));
grad(grad_dir == 0) += values .* intensity(ceros);  
  

%% Gradientes 45
ceros = find(grad_dir== 45);
values = (intensity(ceros) > intensity(ceros + intensity_cols - 1) & intensity(ceros) > intensity(ceros - intensity_cols + 1));
grad(grad_dir == 45) += values .* intensity(ceros);  

%% Gradientes 90
ceros = find(grad_dir == 90);
values = (intensity(ceros) > intensity(ceros - 1) & intensity(ceros) > intensity(ceros + 1));
grad(grad_dir == 90) += values .* intensity(ceros);  

%% Gradientes 135
ceros = find(grad_dir == 135);
  values = (intensity(ceros) > intensity(ceros + intensity_cols + 1) & intensity(ceros) > intensity(ceros - intensity_cols - 1));
grad(grad_dir == 135) += values .* intensity(ceros);  

grad = grad(2:intensity_cols-1, 2:intensity_rows-1);
endfunction
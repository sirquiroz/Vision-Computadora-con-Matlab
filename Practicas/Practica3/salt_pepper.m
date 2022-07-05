function condimento_basico = salt_pepper(img, tp, ts)

  aux = rand(size(img));
  condimento_basico = zeros(size(img));
  condimento_basico += 255*(aux > ts);
  condimento_basico += img.*((aux < ts) .* (aux > tp));
  
endfunction
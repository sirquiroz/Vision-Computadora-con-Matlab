function res = punto2a(rgbImg, c)
  hsvImg = rgb2hsv(rgbImg);
  
  h_channel = (hsvImg(:,:,1)*255);
  
  saturated_h = mod(h_channel + c, 255)/255.0;
  hsvImg(:,:,1) = saturated_h;
  res = hsv2rgb(hsvImg);
end
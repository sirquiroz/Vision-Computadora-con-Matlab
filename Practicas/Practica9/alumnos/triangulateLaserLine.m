function laserpoints = triangulateLaserLine(checkerboardPlane,pixels,KK,kc)
 

 pixelLength = size(pixels);
 rays = inv(KK)*[pixels; ones(1, pixelLength(2))];
 
 lambda = -checkerboardPlane(4)./((checkerboardPlane(1:3))'*rays);
 size(lambda)
 laserpoints = lambda .* rays;
end
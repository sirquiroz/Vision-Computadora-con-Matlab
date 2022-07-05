function rotationMatrix = xRotation(phi)
   radians = degtorad(phi);
   rotationMatrix = [ 1 0 0; 0 cos(radians) (-sin(radians)); 0 sin(radians) cos(radians) ];
end

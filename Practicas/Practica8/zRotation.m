function rotationMatrix = zRotation(phi)
   radians = degtorad(phi);
   rotationMatrix = [ cos(radians) (-1)*sin(radians) 0 ; sin(radians) cos(radians) 0; 0 0 1];
end
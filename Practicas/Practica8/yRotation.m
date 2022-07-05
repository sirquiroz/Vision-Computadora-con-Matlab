function rotationMatrix = yRotation(phi)
   radians = degtorad(phi);
   rotationMatrix = [ cos(radians) 0  sin(radians); 0 1 0; -sin(radians) 0 cos(radians) ];
end
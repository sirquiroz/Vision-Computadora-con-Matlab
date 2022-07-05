function checkerBoardPlane = estimateCheckerboardPlane(R, T)
  
e1 = R*[ 1; 0; 0 ]; 
e2 = R*[ 0; 1; 0 ]; 
e3 = R*[1; 1; 0] + T;

normal = cross(e1,e2);
d = -(normal'*e3);
checkerBoardPlane = [normal; d];

end
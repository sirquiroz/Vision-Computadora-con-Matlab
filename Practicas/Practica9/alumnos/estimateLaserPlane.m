function [laserPlane,LPts] = estimateLaserPlane(pointcloud)
  
   cloudSize = length(pointcloud);
   %length = size(pointcloud);
   A = []  
   for i = 1:cloudSize
       pointSize = size(pointcloud{i});
       r = randi(pointSize(2), 1, floor(pointSize(2)/4));
       %r = pointSize(2)
       A = [ A; [pointcloud{i}(:,r); ones(1,length(r))]' ];
   end
   
   [U,S,V] = svd(A);
   laserNormal = V(1:3,4);
   laserPlane = V(:, 4)/norm(laserNormal);
   LPts = A';
   
end


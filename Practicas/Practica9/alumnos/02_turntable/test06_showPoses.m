%%
load([turntable_images_path '/ChessboardCorners.mat'],'iPt','wPt','Rt','Tt');
load(calib_results_filename,'KK','kc')
load(fullfile(turntable_images_path,'/CameraPose.mat'),'worldRotation','worldTranslation','turntableCenter');


imageFileNames = dir(fullfile(turntable_images_path,'*.png'));
imageFileNames = fullfile({imageFileNames.folder}, {imageFileNames.name});
fprintf('%d images to process\n',length(imageFileNames));

assert(length(imageFileNames)==length(iPt));

%%

figure;
subplot(121);
hold on;

subplot(122);
%
hold on; grid on;
view(210,30);
%axis equal;
axis vis3d;
%axis tight;
rotate3d on;
%axis('equal');

xlabel('X');
ylabel('Y');
zlabel('Z');
%hold on;
%grid on;
%view(210,30)

%
for i=1:length(imageFileNames)
    %%
    us = iPt{i};
    ps = wPt{i};
    ps = [ps zeros(size(ps,1),1)]; % point are in checkerboard coordinates (z = 0)
    R = Rt{i};
    T = Tt{i};
    I = imread(imageFileNames{i});

    % Turntable --------------------
    subplot(121);
    title(sprintf('Image %d of %d',i,length(imageFileNames)));
    imshow(I);
    
    % rotating axis on image
    plot(us(:,1),us(:,2),'g*')
    plot_axis_img(R,T,KK,kc,30);
    plot_axis_img(R,worldTranslation,KK,kc); 
   
    
    % Cameras -------------------
    subplot(122);
    title('Camera extrinsic (wrt checkerboard)');
    
    plot3(ps(:,1),ps(:,2),ps(:,3),'ko','MarkerFaceColor','green') 
        
    plot_axis(eye(3),turntableCenter,50,1,2,3);
    plot_axis(eye(3),[0 0 0],50,1,2,3);
    
    % moving camera
    plot_axis_inv(R, T, 30, 1,2,3);
  
    pause(0.2)
end

%% show using Bouguet's toolbox
load(calib_results_filename);

n_ima = length(wPt);
XX = cell(n_ima,1);
Rc = cell(n_ima,1);
Tc = cell(n_ima,1);

for i=1:n_ima
    ps = wPt{i};
    % point are in checkerboard coordinates (z = 0)
    ps(:,3) = zeros(size(ps,1),1);
    XX{i} = ps';
    Tc{i} = Tt{i};
    Rc{i} = Rt{i};
end
%
show_camera = 1;
fc = [KK(1,1); KK(2,2)];
cc = [KK(1,3); KK(2,3)];
n_sq_x = n_sq_x_1;
n_sq_y = n_sq_y_1;


%show_ext_calib;
show_ext_calib2;


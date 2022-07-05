% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 819.406791222571201 ; 819.949132146259899 ];

%-- Principal point:
cc = [ 590.564899000958235 ; 353.699037515248278 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.098476748821441 ; -0.183130346173796 ; -0.007835704471126 ; 0.000203237223813 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 0.965576519416286 ; 0.723788287723896 ];

%-- Principal point uncertainty:
cc_error = [ 1.177206810798626 ; 1.303636792169310 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.003068466356441 ; 0.009753661436086 ; 0.000462087395607 ; 0.000588411415458 ; 0.000000000000000 ];

%-- Image size:
nx = 1152;
ny = 768;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 14;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -1.964523e+00 ; -2.056160e+00 ; -1.010945e+00 ];
Tc_1  = [ -6.793750e+01 ; -3.492172e+01 ; 1.887495e+02 ];
omc_error_1 = [ 7.837087e-04 ; 1.293039e-03 ; 2.505531e-03 ];
Tc_error_1  = [ 2.741837e-01 ; 3.153448e-01 ; 2.547923e-01 ];

%-- Image #2:
omc_2 = [ -1.893674e+00 ; -2.065087e+00 ; -8.363302e-01 ];
Tc_2  = [ -8.306526e+01 ; -4.265988e+01 ; 1.972985e+02 ];
omc_error_2 = [ 7.950122e-04 ; 1.217058e-03 ; 2.352608e-03 ];
Tc_error_2  = [ 2.872591e-01 ; 3.362788e-01 ; 2.781857e-01 ];

%-- Image #3:
omc_3 = [ -1.808044e+00 ; -2.063341e+00 ; -6.463603e-01 ];
Tc_3  = [ -9.799561e+01 ; -5.237033e+01 ; 2.091707e+02 ];
omc_error_3 = [ 8.092743e-04 ; 1.191083e-03 ; 2.198147e-03 ];
Tc_error_3  = [ 3.046347e-01 ; 3.629273e-01 ; 3.084372e-01 ];

%-- Image #4:
omc_4 = [ -1.679271e+00 ; -2.042060e+00 ; -3.909999e-01 ];
Tc_4  = [ -1.144860e+02 ; -6.741957e+01 ; 2.294238e+02 ];
omc_error_4 = [ 9.099669e-04 ; 1.197642e-03 ; 2.047670e-03 ];
Tc_error_4  = [ 3.328834e-01 ; 3.989785e-01 ; 3.286570e-01 ];

%-- Image #5:
omc_5 = [ 3.496632e-01 ; -2.665523e+00 ; -7.117603e-01 ];
Tc_5  = [ 5.564659e+01 ; -1.957416e+01 ; 1.990789e+02 ];
omc_error_5 = [ 9.147546e-04 ; 1.590183e-03 ; 1.808161e-03 ];
Tc_error_5  = [ 2.910716e-01 ; 3.210824e-01 ; 2.573166e-01 ];

%-- Image #6:
omc_6 = [ -1.369159e+00 ; -1.927100e+00 ; 1.191387e-01 ];
Tc_6  = [ -1.286990e+02 ; -1.022211e+02 ; 2.827640e+02 ];
omc_error_6 = [ 1.306575e-03 ; 1.258264e-03 ; 1.695127e-03 ];
Tc_error_6  = [ 4.166459e-01 ; 4.680703e-01 ; 3.031131e-01 ];

%-- Image #7:
omc_7 = [ -1.098816e+00 ; -1.783623e+00 ; 4.744188e-01 ];
Tc_7  = [ 2.763981e+01 ; -1.468898e+02 ; 3.966329e+02 ];
omc_error_7 = [ 1.153987e-03 ; 1.321162e-03 ; 1.817605e-03 ];
Tc_error_7  = [ 5.915767e-01 ; 6.212323e-01 ; 3.172104e-01 ];

%-- Image #8:
omc_8 = [ -1.210232e+00 ; -1.848326e+00 ; 3.328499e-01 ];
Tc_8  = [ 6.936369e+00 ; -1.507716e+02 ; 3.971847e+02 ];
omc_error_8 = [ 1.208341e-03 ; 1.355345e-03 ; 1.846776e-03 ];
Tc_error_8  = [ 5.895261e-01 ; 6.270552e-01 ; 3.265819e-01 ];

%-- Image #9:
omc_9 = [ -1.362171e+00 ; -1.926589e+00 ; 1.229853e-01 ];
Tc_9  = [ -2.210724e+01 ; -1.531981e+02 ; 3.930108e+02 ];
omc_error_9 = [ 1.279214e-03 ; 1.435776e-03 ; 1.938817e-03 ];
Tc_error_9  = [ 5.811697e-01 ; 6.357988e-01 ; 3.528259e-01 ];

%-- Image #10:
omc_10 = [ -1.509205e+00 ; -1.988872e+00 ; -1.023192e-01 ];
Tc_10  = [ -5.006127e+01 ; -1.519914e+02 ; 3.832496e+02 ];
omc_error_10 = [ 1.287830e-03 ; 1.501569e-03 ; 2.170796e-03 ];
Tc_error_10  = [ 5.667969e-01 ; 6.465445e-01 ; 4.074630e-01 ];

%-- Image #11:
omc_11 = [ -1.659390e+00 ; -2.036039e+00 ; -3.588427e-01 ];
Tc_11  = [ -7.698042e+01 ; -1.467500e+02 ; 3.672735e+02 ];
omc_error_11 = [ 1.229761e-03 ; 1.530198e-03 ; 2.517657e-03 ];
Tc_error_11  = [ 5.459538e-01 ; 6.532982e-01 ; 4.817466e-01 ];

%-- Image #12:
omc_12 = [ -1.770501e+00 ; -2.056881e+00 ; -5.713580e-01 ];
Tc_12  = [ -9.491086e+01 ; -1.399860e+02 ; 3.513387e+02 ];
omc_error_12 = [ 1.266336e-03 ; 1.502278e-03 ; 2.679008e-03 ];
Tc_error_12  = [ 5.265169e-01 ; 6.397233e-01 ; 5.039029e-01 ];

%-- Image #13:
omc_13 = [ -1.858165e+00 ; -2.062990e+00 ; -7.551038e-01 ];
Tc_13  = [ -1.071319e+02 ; -1.328061e+02 ; 3.363567e+02 ];
omc_error_13 = [ 1.306919e-03 ; 1.416050e-03 ; 2.731788e-03 ];
Tc_error_13  = [ 5.083122e-01 ; 6.103829e-01 ; 4.858739e-01 ];

%-- Image #14:
omc_14 = [ -1.923697e+00 ; -2.060231e+00 ; -9.032366e-01 ];
Tc_14  = [ -1.147938e+02 ; -1.263370e+02 ; 3.237974e+02 ];
omc_error_14 = [ 1.289253e-03 ; 1.355994e-03 ; 2.760878e-03 ];
Tc_error_14  = [ 4.930359e-01 ; 5.805335e-01 ; 4.617479e-01 ];


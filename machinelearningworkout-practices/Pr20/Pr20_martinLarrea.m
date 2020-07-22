clear;
close all;
clc;
pkg load image;

#Lit 2
P_ups = rgb2gray(imread("photos/ups.jpeg"));
P_sf = rgb2gray(imread("photos/sanFrancisco.jpg"));

#Lit 5
N1 = [P_ups(35, 110:112); P_ups(36, 110:112); P_ups(37, 110:112)];
F1 = [1, 2, -3; -2, 3, 4; 3, 4, -5];
x = myConvolution(N1, F1);
F2 = zeros(3);
F2(F2 == 0) = 1/9;
Xnew = myFilterer(P_ups, F2);

#Lit 10
figure, imshow(myCollage(2, 1, P_ups, Xnew));

#lit 11
Fx = [1, 0, -1; 1, 0, -1; 1, 0, -1];
Fy = [1, 1, 1; 0, 0, 0; -1, -1, -1];
Pfx = myFilterer(P_ups, Fx);
Pfy = myFilterer(P_ups, Fy);
figure, imshow(myCollage(2, 1, Pfx, Pfy));

#Final
im1 = myEdgeDetector(P_sf, 0.2);
im2 = myEdgeDetector(P_sf, 0.7);
figure, imshow(myCollage(1, 2, im1, im2));


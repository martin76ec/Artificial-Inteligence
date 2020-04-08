# Clean section

close all;
clc; 
clear; 

# Practice 
load matricesPr2.mat;

%Lit 3
img1 = reMatrix(Xnum(1, :));
img2 = reMatrix(Xnum(2, :));
img3 = reMatrix(Xnum(3, :));
img4 = reMatrix(Xnum(4, :));
%imshow(img1);

function y1 = reMatrix(im) 
  y1 = transpose(im);
  y1 = reshape(im, 5, 4);
end

%Lit 4
Xletter = [reshape(im1, 1, 30); 
           reshape(im2, 1, 30); 
           reshape(im3, 1, 30);];

%Lit 5
sumIm  = [sum(Xletter(1, :)); sum(Xletter(2, :)); sum(Xletter(3, :))];
disp('El resultado es: ');
disp(sumIm);

%Lit 6
scatter(X1(:, 1), X1(:, 2));
scatter3(X2(:, 1), X2(:, 2), X2(:, 3));

%Lit 7
pkg load io
carData = xlsread('cars.xlsx');
%lit 8

Xcars = carData(:, 1:3);

%Lit 9
ycars = Xcars(:, 2);

%Lit 10
subplot(1, 2, 1);
scatter3(Xcars(:, 1), Xcars(:, 2), Xcars(:, 3));
xlabel('Distance');
ylabel('Age');
zlabel('Capacity');

subplot(1, 2, 2);
scatter(Xcars(:, 1), Xcars(:, 2));
xlabel('Distance');
ylabel('Age');

%Lit 11
subplot(1,1,1);
scatter(Xcars(:, 1), Xcars(:, 3));
xlabel('Distance');
ylabel('Price');


 





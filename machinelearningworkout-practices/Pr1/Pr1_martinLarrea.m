%Author: Martín Larrea.
%Date: 2020-03-30
%Exercises from book: MachineLearning Workout

%Clean section

close all;
clc; 
clear; 

%Practice

load matricesPr1.mat;

%Lit 3
A = zeros(100, 21);
A(:, 1) = 1:100;
A(:, 19:21) = 8;
A(85, 12) = -100;


%Lit 4
E = zeros(21, 500);
bc = [B; C];
Dt = D';
E(1:size(Dt, 1), 1:size(Dt, 2)) = Dt;

%Lit 5 
F = zeros(size(A, 1), size(A, 2));
for i = 1:size(A, 1)
  aux_A = A(i, :);
  for j = 1:size(E, 2)
    aux_E = E(:, j);
    item = sum(aux_A .* (aux_E.'));
    F(i,j) = item;
  endfor  
endfor

clear i;
clear j;


%Lit 6
%display(F(54, 374));

%Lit 7 
X_8 = myTriplicator(M, F);

clear i;
clear j;

%Lit 8






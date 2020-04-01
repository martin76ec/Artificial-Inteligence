%Author: Martín Larrea.
%Date: 2020-03-30
%Exercises from book: MachineLearning Workout

# Clean section

close all;
clc; 
clear; 

# Practice

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

%Lit 6
printf("El valor de F(54, 374) es: ");
display(F(54, 374));

%Lit 7 & 8 
X_8 = myTriplicator(M, F);

%Lit 9
X_8sum = sum(X_8);

%Lit 10 & 11
X_11 = extractEquals(F, G);

%Lit 12
X_11sum = sum(X_11);

%Lit 13
X_11zeros = nnz(X_11);
printf("\nLa de elementos que no son zero en X_11 es: \n");
display(X_11zeros);











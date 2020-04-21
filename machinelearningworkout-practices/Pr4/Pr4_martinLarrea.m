%Clear section
clear all;
clc;

%Lit 2
load matricesPr4.mat;

%lit 4
subplot(1, 2, 1);
plotRegression(X, Y, Yhat1);
title('Literal 4');

%lit 5
subplot(1, 2, 2);
plotRegression(X, Y, Yhat2);
title('Literal 5');

%lit 7
%a
Yhat1mse = computeMSE(Y, Yhat1);
%b
Yhat2mse = computeMSE(Y, Yhat2);
fprintf('%s%d\n%s%d\n\n', 'Mean Squared Error of Y vs Yhat1: ', Yhat1mse, 'Mean Squared Error of Y vs Yhat2: ', Yhat2mse);


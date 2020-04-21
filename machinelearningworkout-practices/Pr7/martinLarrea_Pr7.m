%Clear section
clear all;
clc;

%lit 2
load matricesPr7.mat;

%Lit 4
X1 = [transpose(x1); transpose(x2); transpose(x3); transpose(x4)];
yhat_X1 = myMcC_P(X1, [2;-1;-3], 3);
display(yhat_X1);

%Lit 5
X2 = [transpose(x5); transpose(x6)];
yhat_X2 = myMcC_P(X2, w2, 10);
display(yhat_X2);

%Lit 6
yhat_X = myMcC_P(X, [2;-1], 10);
display(yhat_X);

%Lit 8
plotClasses_McC_P(X, y, yhat_X);



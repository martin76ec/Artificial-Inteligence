clear all;
clc;
clear;


load matricesPr3.mat

%lit 4
plotClasses(X, y);

%Lit 5
plotClasses(X2, y2);

%Lit 6
confusionmat(y_animals, yhat_animals)

%Lit 7
computeMCE(y_animals, yhat_animals)

%lit 10
y3confmat = confusionmat(y3, yhat3)

%lit 11
computeCPM(y3confmat, 1);

%lit 12
computeCPM(y3confmat, 2);

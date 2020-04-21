clear all;
clc;
clear;


load matricesPr3.mat

%plotClasses(X, y);

%plotClasses(X2, y2);

confusionmat(y_animals, yhat_animals)

%Lit 7
computeMCE(y_animals, yhat_animals)

%lit 10
computeCPM(confusionmat(y3, yhat3), 1)




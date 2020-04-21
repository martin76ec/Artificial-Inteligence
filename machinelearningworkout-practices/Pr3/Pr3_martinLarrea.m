clear all;
clc;
clear;


load matricesPr3.mat

%lit 4
subplot(1, 2, 1);
plotClasses(X, y);
title('Literal 4');

%Lit 5
subplot(1, 2, 2);
plotClasses(X2, y2);
title('Literal 5');

%Lit 6
fprintf('%s','Confusion matrix of yanimals: ');
yanimalscmatrix = confusionmat(y_animals, yhat_animals);
display(yanimalscmatrix);

%Lit 8
yanimalsmce = computeMCE(y_animals, yhat_animals);
fprintf('%s%d\n\n', 'Missclassification error of yanimals: ', yanimalsmce);

%lit 10
y3confmat = confusionmat(y3, yhat3);
fprintf('%s', 'Confusion matrix of y3: ');
display(y3confmat);

%lit 11
computeCPM(y3confmat, 1);

%lit 12
computeCPM(y3confmat, 2);

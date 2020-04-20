# Clear section
clear all;
clc;
clear;

# Loads
load matricesPr3.mat

# lit 4
plotClasses(X, y);
# Lit 5
plotClasses(X2, y2);
# Lit 6
confusion = confusionmat(y_animals, yhat_animals);




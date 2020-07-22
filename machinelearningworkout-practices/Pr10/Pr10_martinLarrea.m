#Clean 
close all;
clear;
clc;

#Practice 1 
#Author: Martin Larrea

load ('matricesPr10.mat')


%Lit 4 
X = [1,0,1;-2,3,1;5,-5,4];
yhat = nnOutput(X, W1, W2);

for i = 1:size(X_dig, 1)
    #imshow(reshape(X_dig(i, :), 20, 20));
    #pause();
end

yimg = [1,6,4,7,7,9,8,3,6,1,10,7,4,4,9,6,6,8,8,5,1,2,8,10,4]';
yhat2 = nnOutput(X_dig, W1_dig, W2_dig);

cmat = confmat(yimg, yhat2);
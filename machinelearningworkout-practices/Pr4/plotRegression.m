%lit 3
function y1 = plotRegression(X, y, yhat)
   scatter(X, y, 40, 'blue', 'c');
   hold on;
   scatter(X, yhat, 40, 'black', '*');
end
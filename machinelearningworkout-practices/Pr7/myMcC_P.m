%Lit 3
function [yhat] = myMcC_P(X, w, Theta)
    S = X * w;
    yhat = S;
    yhat(yhat > Theta) = 1;
    yhat(yhat ~= 1) = 0;
end
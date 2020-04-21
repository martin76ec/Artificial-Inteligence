%Lit 6
function [mse] = computeMSE(y, yhat)
    sumatory = sum((y - yhat).^2);
    mse = (1/length(y)) * sumatory;
end
    
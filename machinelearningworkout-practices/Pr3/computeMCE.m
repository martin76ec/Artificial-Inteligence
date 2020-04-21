%Lit 7
function y3 = computeMCE(y, yhat)
    compared = y - yhat;
    missed = compared( compared ~= 0);
    y3 = length(missed) / length(compared);
end
function [whiteMat] = myWhitener(P)
    P = double(P);
    a = P(:);
    u = mean(a);
    sigma = sqrt(var(a));
    whiteMat = (P - u) / sigma;
end

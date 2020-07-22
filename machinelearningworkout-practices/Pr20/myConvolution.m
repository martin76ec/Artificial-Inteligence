function [x] = myConvolution(N, F)
    N = double(N);
    F = rot90(rot90(F));
    x = sum(sum(N .* F));
end

function [H] = myHistogram(P)
    P = double(P(:));
    H = zeros(2, 256);
    H(1, :) = 0:255;
    for k = 1:255
        hk = P(P == H(1, k)); 
        H(2, k) = size(hk, 1);
    end
end

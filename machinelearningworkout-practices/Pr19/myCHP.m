function [H] = myCHP(P)
    P = double(P(:));
    H = zeros(2, 256);
    H(1, :) = 0:255;
    dim = size(P, 1);
    hl = 0;
    for k = 1:256
        hk = P(P == H(1, k)); 
        hl += size(hk, 1);
        H(2, k) = hl / dim;    
    end
end

function [X] = myFilterer(P, F)
    P = double(P);
    F = rot90(rot90(F));
    [x, y] = size(P);
    Pz = zeros(x + 2, y + 2);
    Pz(2:x + 1, 2:y + 1) = P;
    X = zeros(x, y);
    for i = 2:x
        for j = 2: y
            Pzaux = Pz(i-1:i+1, j-1:j+1);
            X(i - 1, j - 1) = sum(sum(Pzaux .* F)); 
        end
    end
    X  = uint8(X);
end

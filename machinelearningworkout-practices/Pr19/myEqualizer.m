function [eqMatrix] = myEqualizer(P)
    eqMatrix = double(P);
    histo = myCHP(P);
    for k = 1:256
        eqMatrix(eqMatrix == histo(1, k)) = 255 * histo(2, k);
    end
end

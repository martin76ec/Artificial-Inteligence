function [cmat] = confusionmat(y, yhat) 
    class = unique(y);
    n_class = size(class, 1);
    cmat = zeros(n_class);
    for i = 1:n_class
        real = class(i);
        indy = y == real;
        indh = yhat(indy);
        classh = unique(indh);
        for j = 1:size(classh, 2)
            ind = indh == classh(j);
            cmat(i, classh(j)) = sum(ind);
        end
    end
end

function [C] = myCollage(n_rows, n_cols, im1, im2)
    if size(im1) != size(im2)
        C = 0;
    else
        [x, y] = size(im1);
        C = zeros(x * n_rows, y * n_cols);
        if n_rows > n_cols
            C = [im1; im2];
        else
            C = [im1, im2];
        end 
    end 
end

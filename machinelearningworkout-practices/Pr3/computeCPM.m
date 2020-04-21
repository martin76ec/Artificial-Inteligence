%Lit 9
function y4 = computeCPM(cM, index)
    x = cM(index, :);
    y = cM(:, index);
    tp = x(index);
    fp = sum(y) - tp;
    fn = sum(x) - tp;
    tn = sum(sum(cM)) - tp - fp - fn;
    fprintf('FOR CLASS INDEX', index);
    fprintf('AS POSITIVE\n');
    fprintf('s%d','True Positive: \n', tp);
    fprintf('False Positive: \n', fp);
    fprintf('False Negative: \n', fn);
    fprintf('True Negative: \n', tn);
end
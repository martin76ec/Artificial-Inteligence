%Lit 9
function y4 = computeCPM(cM, index)
    x = cM(index, :);
    y = cM(:, index);
    tp = x(index);
    fp = sum(y) - tp;
    fn = sum(x) - tp;
    tn = sum(sum(cM)) - tp - fp - fn;
    fprintf('%s%d%s\n','FOR CLASS INDEX ', index, ' AS POSITIVE');
    fprintf('%s%d\n', 'True Positive: ',tp);
    fprintf('%s%d\n', 'False posiive: ',fp);
    fprintf('%s%d\n', 'False negative: ',fn);
    fprintf('%s%d\n\n', 'True negative: ',tn);
end
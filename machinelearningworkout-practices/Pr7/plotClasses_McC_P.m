function y1 = plotClasses_McC_P(X, y, yhat)
    colors = {'black', 'red'};
    for i = 1:length(y)    
        color_y = colors{y(i)+1};
        color_yhat = colors{yhat(i)+1};
        scatter(X(i,1), X(i,2), 40, color_y, 'c');
        hold on;
        scatter(X(i,1), X(i,2), 40, color_yhat, '*');
        hold on;
    end    
end
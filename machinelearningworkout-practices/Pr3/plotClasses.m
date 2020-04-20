# Lit 3 
function y1 = plotClasses(X, y) 
  x1 = X(:, 1);
  x2 = X(:, 2);
  markers = ['*', '+', 'c', 'd', 'filled'];
  colors = linspace(1,10, length(markers));
  classes = linspace(1,length(unique(y)), length(unique(y)));
  for i = 1:length(y)
    for j = 1:length(classes)
      if y(i) == unique(y)(j)
        color = colors(classes(j));
        marker = markers(classes(j));
      endif    
    endfor
    scatter(x1(i), x2(i), 40, color, marker);
    hold on;  
  endfor
endfunction

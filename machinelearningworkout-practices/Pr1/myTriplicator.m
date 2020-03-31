function X = myTriplicator(M, A)
  X = A;
  for i = 1:size(A, 1) 
    for j = 1:size(A, 2)
      if M(i, j) == 1
        X(i, j) = A(i ,j) * 3;
      end
    endfor
  endfor
endfunction
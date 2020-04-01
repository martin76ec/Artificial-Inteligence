% Lit 7
function X = myTriplicator(M, A)
  
  if not(isequal(size(A), size(M)))
    printf("Error: las dimensiones no son iguales\n");
    return;
  endif
  
  X = A;
  for i = 1:size(A, 1) 
    for j = 1:size(A, 2)
      if M(i, j) == 1
        X(i, j) = A(i ,j) * 3;
      end
    endfor
  endfor
endfunction
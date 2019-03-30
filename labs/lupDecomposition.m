## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-03-30

function [L, U, P] = lupDecomposition(A)
  [m, n] = size(A);
  piv = 1:n;
  for k = 1:n-1
    # start pivotare
    [maxValue, maxPosition] = max(abs(A(k:n, k)));
    A([k, maxPosition], :) = A([maxPosition, k], :);
    piv([k, maxPosition]) = piv([maxPosition, k]);
    # end pivotare
    lines = maxPosition+1:n;
    
    # complementul lui Schur
    A(lines, k) = A(lines, k) / A(k, k);
    A(lines, lines) = A(lines, lines) - A(lines, k) * A(k, lines);
  endfor
  
  U = triu(A, 0);
  L = tril(A, -1) + eye(n);
  for k=1:n
    P(k, piv(k)) = 1;  
  endfor
endfunction

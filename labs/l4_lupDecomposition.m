## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-03-30

function [L, U, P] = l4_lupDecomposition(A)
  [m, n] = size(A);
  piv = (1:n)'; # vector coloana pentru permutare
  for k = 1:n-1
    # start pivotare
    [maxValue, maxPosition] = max(abs(A(k:n, k)));
    maxPosition = maxPosition + k -1; # ???
    A([k, maxPosition], :) = A([maxPosition, k], :);
    piv([k, maxPosition]) = piv([maxPosition, k]);
    # end pivotare
    
    # complementul lui Schur
    lines = k+1:n;
    A(lines, k) = A(lines, k) / A(k, k);
    A(lines, lines) = A(lines, lines) - A(lines, k) * A(k, lines);
  endfor
  
  U = triu(A, 0);
  L = tril(A, -1) + eye(n);
  for k=1:n
    P(k, piv(k)) = 1;  
  endfor
endfunction

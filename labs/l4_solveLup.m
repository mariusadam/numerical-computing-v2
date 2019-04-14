## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [x] = l4_solveLup (A, b)
  [L, U, P] = l4_lupDecomposition(A);
  y = l4_forwardSubstitution(L, P * b);
  x = l4_backSubstitution(U, y);
endfunction

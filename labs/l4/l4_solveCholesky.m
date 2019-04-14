## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [x] = l4_solveCholesky (A, b)
  R = l4_choleskyDecomposition(A);
  y = l4_forwardSubstitution(R', b);
  x = l4_backSubstitution(R, y); 
endfunction

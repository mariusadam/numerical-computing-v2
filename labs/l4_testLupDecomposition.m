## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [] = l4_testLupDecomposition ()
  A = [1, 1, 1; 1, 1, 2; 2, 4, 2]
  [L, U, P] = l4_lupDecomposition(A)
  LU = L * U
  PA = P * A
endfunction

## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [] = l4_testSolveLup ()
  A = [1, 1, 1; 1, 1, 2; 2, 4, 2]
  b = [3, 4, 8]'
  x = l4_solveLup(A, b)
  verifiedB = A * x
endfunction

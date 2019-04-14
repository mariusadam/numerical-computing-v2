## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [] = l4_testSolveCholesky ()
  A = [1, 2,1; 2, 5, 3; 1, 3, 3]
  b = [4, 10, 7]'
  x = l4_solveCholesky(A, b)
  verifiedB = A * x
endfunction

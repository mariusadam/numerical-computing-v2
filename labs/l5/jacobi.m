## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [x, iterations] = jacobi (A, b, x0, err, maxIterations)
  M = diag(diag(A));
  N = M - A;
  [x, iterations] = _solveIterative(M, N, b, x0, err, maxIterations);
endfunction

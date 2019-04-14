## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [x, iterations] = sor (A, b, x0, err, maxIterations, omega)
  M = 1 / omega * diag(diag(A)) + tril(A, -1);
  N = M - A;
  [x, iterations] = _solveIterative(M, N, b, x0, err, maxIterations);
endfunction

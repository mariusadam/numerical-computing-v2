## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [omega] = optimumOmega (A)
  M = diag(diag(A));
  N = M - A;
  TJabobi = M \ N;
  omega = 2 / (1 + sqrt(1 - spectralRadius(TJabobi)^2));
endfunction

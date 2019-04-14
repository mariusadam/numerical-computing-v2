## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [] = problem3_firstMatrix (n)
  A = diag(5 * ones(n, 1));
  A = A + diag(-1 * ones(n - 1, 1), -1);
  A = A + diag(-1 * ones(n - 1, 1), 1)
  b = 3 * ones(n, 1);
  b(1) = b(n) = 4
  
  _solveUsingAll(A, b);
endfunction

## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [] = problem3_secondMatrix (n)
  A = diag(5 * ones(n, 1));
  A = A + diag(-1 * ones(n - 1, 1), -1);
  A = A + diag(-1 * ones(n - 1, 1), 1);
  A = A + diag(-1 * ones(n - 3, 1), -3);
  A = A + diag(-1 * ones(n - 3, 1), 3)
  b = 2 * ones(n, 1);
  if mod(n, 2) != 0
    b(ceil(n / 2)) = 1;
  endif
  b(1) = b(n) = 3
  
  _solveUsingAll(A, b);
endfunction

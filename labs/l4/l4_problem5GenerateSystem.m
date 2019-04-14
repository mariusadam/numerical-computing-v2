## Author: marius <marius@mjolnir>
## Created: 2019-04-14

# Generate a system where A is
#  1  0  0   . . . 1
# −1  1  0   . . . 1
# −1 −1  1   . . . 1
# −1 −1 −1 1 . . . 1
# ..................
# −1  . . .  −1 −1 1
# and b = [2, 1, 0, -1, ... -n + 2]'
function [A, b] = l4_problem5GenerateSystem (n)
  m = n + 1;
  A = zeros(m, m);
  b = zeros(1, m)';
  for i=1:m
    b(i) = - i + 3;
    A(i, 1:i-1) = -1 * ones(1, i-1);
    A(i, i) = 1;
    A(i, m) = 1;
  endfor
endfunction

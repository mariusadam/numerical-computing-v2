## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [A] = l4_randNonSingular (n)
# Generate a random non singular matrix
  do
    A = rand(n);
  until (det(A) != 0)
endfunction

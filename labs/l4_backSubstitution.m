## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [x] = l4_backSubstitution (U, b)
# U - upper triangular matrix
# b - right hand side vector
  
  n = length(b);
  x = zeros(size(b));
  for k=n:-1:1
    x(k) = (b(k) - U(k, k+1:n) * x(k+1:n)) / U(k, k);
  endfor

endfunction

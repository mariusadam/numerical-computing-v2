## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [x] = l4_forwardSubstitution (L, b)
# L - lower triangular matrix_type
# b - right hand side vectorize
  x = zeros(size(b));
  n = length(b);
  for k=1:n
    x(k) = (b(k) - L(k, 1:k-1) * x(1:k-1)) / L(k, k);
  endfor
endfunction

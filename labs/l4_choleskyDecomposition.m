## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [R] = l4_choleskyDecomposition(A)
  R = A;
  n = length(A);
  for i=1:n
    for j=i+1:n
      R(j, j:n) = R(j, j:n) - R(i, j:n) * R(i, j) / R(i, i);
    endfor
    R(i, i:n) = R(i, i:n) / sqrt(R(i, i));
  endfor
  R = triu(R);
endfunction

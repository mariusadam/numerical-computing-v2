## Author: marius <marius@mjolnir>
## Created: 2019-04-15

# Compute the coefficients of the Hermite interpolation polynomial
function coefficients=hermiteIntPolyCoeff(nodes, nodesValues, firstDerivativeNodesValues)
  m = length(nodes);
  for i=1:m
    z(2 * i - 1) = z(2 * i) = nodes(i);
    Q(2 * i - 1, 1) = Q(2 * i, 1) = nodesValues(i);
    Q(2 * i, 2) = firstDerivativeNodesValues(i);
    if (i ~= 1)
      Q(2 * i - 1, 2) = (Q(2 * i - 1, 1) - Q(2 * i - 2, 1)) / (z(2 * i - 1) - z(2 * i - 2));
    endif
  endfor
  
  for i=3:2*m
    for j=3:i
      Q(i, j) = (Q(i, j - 1) - Q(i - 1, j - 1)) / (z(i) - z(i - j + 1));
    endfor
  endfor
  coefficients = diag(Q);
endfunction

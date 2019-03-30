## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [sum] = l2_mySin(x, err)
  x = mod(x, 2 * pi);
  sum = x;
  term = x;
  j = 3;
  while (abs(term) > err)
     term = - term * x ^ 2 / (j * (j - 1));
     sum = sum + term;
     j = j + 2;
  endwhile
endfunction

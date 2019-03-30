## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [sum] = l2_myCos(x, err)
  x = mod(x, 2 * pi);
  sum = 0;
  j = 0;
  term = 1;
  while (abs(term) > err)
    sum = sum + term;
    j = j + 1;
    term = - term * (x ^ 2) / ((2 * j - 1) * (2 * j));
  endwhile
endfunction

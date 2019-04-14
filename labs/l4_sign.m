## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [s] = l4_sign (x)
  if x >= 0
    s = 1;
  else
    s = -1;
  endif
endfunction

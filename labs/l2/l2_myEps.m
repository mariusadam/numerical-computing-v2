## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [retval] = l2_myEps()
  next = 1 / 2;
  while (next + 1 != 1)
    retval = next;
    next = next * 1 / 2;
  endwhile
endfunction

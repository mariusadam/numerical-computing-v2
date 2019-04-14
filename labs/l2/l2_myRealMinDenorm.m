## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [retval] = l2_myRealMinDenorm()
  next = 1 / 2;
  while (next != 0)
    retval = next;
    next = next * 1 / 2;
  endwhile
endfunction

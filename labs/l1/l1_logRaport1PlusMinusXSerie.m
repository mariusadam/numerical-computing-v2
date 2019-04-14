## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [retval] = l1_logRaport1PlusMinusXSerie(x, n)
  retval = 0;
  xval = x;
  numarator = 1;
  if (n <= 1)
    return;
  endif
  while (numarator <= n - 1)
    retval = retval - (xval / numarator);
    xval = xval * x * x;
    numarator = numarator + 2;
  endwhile
  
  retval = 2 * retval;
endfunction

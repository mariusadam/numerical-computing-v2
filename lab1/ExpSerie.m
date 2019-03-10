## Author: marius <marius@mjolnir>
## Created: 2019-03-03

function [retval] = ExpSerie (x, n)
  xval = x;
  factorialVal = 1;
  retval = 1;
  if (n <= 1)
    return;
  endif
 for i=1:n - 1
   retval = retval + xval / factorialVal;
   xval = xval * x;
   factorialVal = factorialVal * (i + 1);
 endfor
endfunction

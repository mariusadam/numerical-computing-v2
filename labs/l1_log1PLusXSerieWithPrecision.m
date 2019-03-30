## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [numberOfTerms] = l1_log1PLusXSerieWithPrecision(x, precision)
  currentVal = 0;
  previousVal = 0;
  numberOfTerms = 0;
  xval = x;
  numarator = 1;
  sign = 1;
  isPrecisionReached = false;
  do
    numberOfTerms = numberOfTerms + 1;
    currentVal = currentVal + sign * (xval / numarator);
    sign = sign * -1;
    xval = xval * x;
    numarator = numarator + 1;
%    disp(currentVal);disp(previousVal);disp(currentVal-previousVal);disp("====");
    isPrecisionReached = abs(currentVal-previousVal) <= precision;
    previousVal = currentVal;
  until (isPrecisionReached)
endfunction

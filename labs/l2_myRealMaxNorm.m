## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [retval] = l2_myRealMaxNorm()
  retval = (2 - MyEps()) * 2 ^ 1023;
endfunction

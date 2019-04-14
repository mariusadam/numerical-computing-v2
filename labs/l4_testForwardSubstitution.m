## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [] = l4_testForwardSubstitution ()
  L = [1, 0, 0; 0.5, 1, 0; -.3, -0.04, 1]
  b = [2, 3, 4]'
  x = l4_forwardSubstitution(L, b)
  verifiedB = L * x
endfunction

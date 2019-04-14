## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [] = l4_testBackSubstitution ()
  U = [10, -7, 0; 0, 2.5, 5; 0, 0, 6.2]
  b = [7, 2.5, 6.2]'
  x = l4_backSubstitution(U, b)
  verifiedB = U * x
endfunction

## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [retval] = l4_problem5 (n)
  [A, b] = l4_problem5GenerateSystem(n)
  format long
  xLup = l4_solveLup(A, b)
  xQr = l4_solveQr(A, b)
  xCorrect = A \ b
  normXCorrect = norm(xCorrect);
  errAbsLup = norm(xLup - xCorrect)
  errRelLup = errAbsLup / normXCorrect
  errAbsQr = norm(xQr - xCorrect)
  errRelQr = errAbsQr / normXCorrect
endfunction

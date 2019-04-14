## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [] = l4_problem3 (n)
# Problema 3 Generat¸i sisteme cu matrice aleatoare nesingulare 
# ce au soluttia [1, . . . , 1]T
# Rezolvat¸i-le cu eliminare gaussian˘a ¸si descompunere LUP
# n - dimensiunea sistemului
  A = l4_randNonSingular(n)
  b = A * ones(n, 1)
  xGaussElim = l4_solveGaussElim(A, b)
  xLup = l4_solveLup(A, b)
endfunction

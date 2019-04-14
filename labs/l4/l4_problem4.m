## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [] = l4_problem4 (n)
# Problema 4 S˘a se scrie rutine pentru descompunerea Cholesky a unei matrice
# hermitiene ¸si pozitiv definite ¸si rezolvarea unui sistem cu o astfel de
# matrice prin descompunere Cholesky. Testat¸i rutinele pentru matrice generate
# aleator ¸si sisteme cu matrice aleatoare, dar cu solut¸ie cunoscut˘a.

  A = gallery('moler', n) # generate a n x n symetric & positive definite matrix
  R = l4_choleskyDecomposition(A)
  verifiedA = R' * R
  b = A * ones(n, 1)
  x = l4_solveCholesky(A, b)
  verifiedB = A * x
endfunction

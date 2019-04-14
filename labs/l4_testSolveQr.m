function [] = l4_testSolveQr ()
  A = [1, 1, 1; 1, 1, 2; 2, 4, 2]
  b = [3, 4, 8]'
  x = l4_solveQr(A, b)
  verifiedB = A * x
endfunction

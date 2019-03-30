## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-03-30

function [x] = l4_solveWilsonUsingGaussElim()
  A = [10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10];
  b = [32 23 33 31]' ;  %' face transpusa matricei
  x = l4_solveGaussElim(A, b);
endfunction

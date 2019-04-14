## Author: marius <marius@mjolnir>
## Created: 2019-04-14

# Solve the system using all the methods implemented
function [] = _solveUsingAll (A, b)
  x0 = rand(length(b), 1) # choose  rnadom starting solution
  err = eps # compute with machine precision
  maxIterations = 100000 # high number if iterations to make sure we'll find a solution
  omegaRandom = rand * 2 # choose a random omega between 0 and 2
  omegaOptimum = optimumOmega(A) # well, the code says it
  
  [xJacobi, itJacobi] = jacobi(A, b, x0, err, maxIterations);
  fprintf("itJacobi - %d\n", itJacobi);
  
  [xGS, itGS] = gaussSeidel(A, b, x0, err, maxIterations);
  fprintf("itGS - %d\n", itGS);
  
  [xGSUsingSor, itGSUsingSor] = gaussSeidelUsingSor(A, b, x0, err, maxIterations);
  fprintf("itGSUsingSor - %d\n", itGSUsingSor);
  
  [xSorOmegaOpt, itSorOmegaOpt] = sor(A, b, x0, err, maxIterations, omegaOptimum);
  fprintf("itSorOmegaOpt - %d\n", itSorOmegaOpt);
  
  [xSorOmegaRand, itSorOmegaRand] = sor(A, b, x0, err, maxIterations, omegaRandom);
  fprintf("itSorOmegaRand - %d\n", itSorOmegaRand);
endfunction

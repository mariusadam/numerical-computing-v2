## Author: marius <marius@mjolnir>
## Created: 2019-03-11

function [] = l3_eroriMatriciWilsonExample()
 A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
 b = [32; 23; 33; 31];
 x = A \ b;
 bp = [32.1; 22.9; 33.1; 30.9];
 err_inn = norm(b - bp)
 xpb = A \ bp;
 err_out = norm(x - xpb)
 fpb = err_out / err_inn
 err_inRelativ = norm(b - bp) / norm(b)
 err_outRelativ = norm(x - xpb) / norm(x)
 fpbRelativ = err_outRelativ / err_inRelativ
 
% perturbam A
 Ap = [10 7 8.1 7.2; 7.8 5.04 6 5; 8 5.98 9.89 9; 6.99 5 9 9.98];
% eroarea absouluta de intrare
 err_inA = norm(A - Ap)
 xpA = Ap \ b;
 err_outA = norm(xpA - x)
 fpA = err_outA / err_inA

% eroarea relativa de intrare 
 err_inARelativ = norm(A - Ap) / norm(A)
 err_outARelativ = norm(x - xpA) / norm(x)

% factorul de condtionare
 fpARelativ = err_outARelativ / err_inARelativ
endfunction

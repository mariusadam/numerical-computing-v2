## Author: mariusadam 
## Created: 2019-03-24

# Sa se studieze conditionarea matricei Vandermonde Vn(t)
# in raport cu norma Cebasev pentru
# t(k) = 1 + k * (2 / n), n = 10:15, k=0:n
function [] = l3_condVandermondeA(nMin = 10, nMax = 15)
  # norma Cebasev e norma cu cel mai mare factor de amplificare
  # de unde rezulta ca p = inf
  p = 'inf'; 
  for n=nMin:nMax
    k=0:n;
    t=-1+k*2/n;
    fprintf('cond(vander%d(t), %s)=%g\n', n, p, cond(vander(t), p));
  end
endfunction

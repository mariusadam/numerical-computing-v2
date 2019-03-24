## Author: mariusadam 
## Created: 2019-03-24

function [] = condVandermondeA (nMin, nMax)
  for n=nMin:nMax
    k=1:n;
    t=-1+k*2/n;
    fprintf('cond(vander%d(t))=%g\n', n, cond(vander(t)));
  end
endfunction

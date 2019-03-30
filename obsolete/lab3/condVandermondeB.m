## Author: mariusadam 
## Created: 2019-03-24

function [] = condVandermondeB(nMin, nMax)
  for n=nMin:nMax
    k=1:n;
    t=1./k;
    fprintf('cond(vander%d(t))=%g\n', n, cond(vander(t)));
  end
endfunction

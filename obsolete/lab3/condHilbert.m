## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-03-24

function [] = condHilbert (nMin, nMax)
  for n=nMin:nMax
    fprintf('cond(hilb(%d))=%g\n', n, cond(hilb(n)));
  end
endfunction

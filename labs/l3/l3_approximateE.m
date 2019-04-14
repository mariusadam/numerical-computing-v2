## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-03-30

function [approximatedE] = l3_approximateE(n)
  En = (1 / 2) * 1 / (n + 1);
  while (n > 1)
    En = (1 - En) / n;
    n = n - 1;
  endwhile
  # E1 = 1/e => e = 1 / E1
  approximatedE = 1 / En;
endfunction

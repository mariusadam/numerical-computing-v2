## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-03-24

# Sa se studieze conditionarea matricei Hilbert Hn
# in raport cu norma euclidiana
# Hn(i, j) = 1 / (i + j - 1), n=10:15 i, j=0:n-1
# exista functia 'hilb' pentru generarea matricei
function [] = l3_condHilbert (nMin = 10, nMax = 15)
  p = 2; % => cond se va calcula folosing norma euclidiana
  for n=nMin:nMax
    fprintf('cond(hilb(%d), 2)=%g\n', n, cond(hilb(n), p));
  end
endfunction

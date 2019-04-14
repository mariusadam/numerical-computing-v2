## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-03-30

 # Calculeaza e folosing aproximari consecutive a doi termeni ai sirului
 # E(n) = integral(x^n*exp(x - 1)dx, 0, 1)
 # Se observa ca E(1) = e, E(n) = 1 - n * E(n - 1)
 # 0 < E(n) < 1 / (n + 1)
function [currentApproximant, startN] = l3_myE (err = eps, startN = 1)
 currentApproximant = l3_approximateE(startN);
  do
    nextAproximant = l3_approximateE(startN + 1);
    precisionReached = abs(nextAproximant - currentApproximant) / abs(currentApproximant) < err;
    currentApproximant = nextAproximant; # reuse previously computed value
    startN = startN + 1;
  until (precisionReached)
endfunction

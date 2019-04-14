## Author: marius <marius@mjolnir>
## Created: 2019-04-14

function [x, iterations] = _solveIterative (M, N, b, x0, err, maxIterations)
  xprev = x0; # previous solution
  for i=1:maxIterations
    xi = M \ (N * xprev + b);
    errAbs = norm(xi - xprev, inf);
    errRel = errAbs / norm(xi, inf);
    if (errRel <= err)
      x = xi;
      iterations = i;
      return;
    endif
    xprev = xi;
  endfor
  error('Could not find a solution with the given precision');
endfunction

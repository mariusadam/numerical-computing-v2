## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-04-20

function pointValue = evalHermiteIntPoly (nodes, coefficients, point)
  pointValue = coefficients(1);
  product = 1;
  for i=2:length(coefficients)
    if (mod(i, 2) == 0)
      product *= (point - nodes(i / 2));
    else
      product *= (point - nodes((i - 1) / 2));
    endif
    pointValue += coefficients(i) * product; 
  endfor
endfunction

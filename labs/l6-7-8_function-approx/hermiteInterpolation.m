## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-04-20

function pointsValues = hermiteInterpolation (nodes, nodesValues, firstDerivativeNodesValues, points)
  coeff = hermiteIntPolyCoeff(nodes, nodesValues, firstDerivativeNodesValues);
  for i=1:length(points)
    pointsValues(i) = evalHermiteIntPoly(nodes, coeff, points(i));
  endfor
endfunction

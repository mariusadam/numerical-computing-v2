## Author: marius <marius@mjolnir>
## Created: 2019-04-15

function pointsValues=lagrangeInterpolation(nodes, nodesValues, points)
  pointsValues = zeros(size(points));
  for i=1:length(points)
    for j=1:length(nodes)
      lagrangePolyValue = evalLagrangeIntPoly(nodes, points(i), j);
      pointsValues(i) = pointsValues(i) + nodesValues(j) * lagrangePolyValue;
    endfor
  endfor
end

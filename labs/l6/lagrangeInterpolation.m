## Author: marius <marius@mjolnir>
## Created: 2019-04-15

function aproximatedValues=lagrangeInterpolation(points, values, pointsToApproximate)
  aproximatedValues = zeros(size(pointsToApproximate));
  for i=1:length(pointsToApproximate)
    for j=1:length(points)
      lagrangePolyValue = evaluateFundamentalPolynomial(points, pointsToApproximate(i), j);
      aproximatedValues(i) = aproximatedValues(i) + values(j) * lagrangePolyValue;
    endfor
  endfor
end

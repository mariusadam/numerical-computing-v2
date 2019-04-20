## Author: marius <marius@mjolnir>
## Created: 2019-04-15

function [] = testSinInterpolation ()
  nodes = [0, pi / 2, pi, 3 * pi / 2, 2 * pi];
  nodesValues = [0, 1, 0, -1, 0];
  firstDerivativeNodesValues = [1, 0, -1, 0, 1];
  
  points = -pi:0.01:3*pi;
  
  pointsValuesLagrange = lagrangeInterpolation(nodes, nodesValues, points);
  pointsValuesHermite = hermiteInterpolation(nodes, nodesValues, firstDerivativeNodesValues, points);
  
  plot(
    nodes, nodesValues, 'x;Given nodes;',
    points, sin(points), ';sin(x);',
    points, pointsValuesLagrange, ';Lm(x);',
    points, pointsValuesHermite, ';Hm(x);'
  );
  
  pipe4Lagrange = lagrangeInterpolation(nodes, nodesValues, pi / 4)
  pipe4hermite = hermiteInterpolation(nodes, nodesValues, firstDerivativeNodesValues, pi / 4)
  pipe4Sin = sin(pi / 4)
endfunction

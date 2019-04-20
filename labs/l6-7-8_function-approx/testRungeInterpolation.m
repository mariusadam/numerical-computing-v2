## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-04-20

function [] = testRungeInterpolation ()
  runge = @(x) 1 / (1 + 25 * x^2);
  rungeDerivative = @(x) -50 * x / (1 + 25 * x^2)^2;
  rungeSecondDerivative = @(x) 50 * (75 * x^2 - 1) / (1 + 25 * x^2)^3;
  nodes = -1:0.2:1;
  firstNode = nodes(1);
  lastNode = nodes(end);
  nodesValues = arrayfun(runge, nodes);
  firstDerivativeNodesValues = arrayfun(rungeDerivative, nodes);
  hold on;
  
  points = -1:0.01:1.01;
  
  pointsValuesLagrange = lagrangeInterpolation(nodes, nodesValues, points);
  pointsValuesHermite = hermiteInterpolation(nodes, nodesValues, firstDerivativeNodesValues, points);
  pointsValuesSplineDeBoor = splineDeBoorInt(nodes, nodesValues, points);
  pointsValuesSplineNatural = splineNaturalInt(nodes, nodesValues, points);
  pointsValuesSplineComplete = splineCompleteInt(nodes, nodesValues, points, rungeDerivative(firstNode), rungeDerivative(lastNode));
  pointsValuesSplineSecondDerivative = splineCompleteInt(nodes, nodesValues, points, rungeSecondDerivative(firstNode), rungeSecondDerivative(lastNode));
  plot(
    nodes, nodesValues, 'x;Given nodes;',
    points, arrayfun(runge, points), ';runge(x);',
    points, pointsValuesLagrange, ';Lm(x);',
    points, pointsValuesHermite, ';Hm(x);',
    points, pointsValuesSplineDeBoor, ';SplineDeBoor(x);',
    points, pointsValuesSplineNatural, ';SplineNatural(x);',
    points, pointsValuesSplineComplete, ';SplineComplete(x);',
    points, pointsValuesSplineSecondDerivative, ';SplineSecondDerivative(x);'
  );
  
endfunction

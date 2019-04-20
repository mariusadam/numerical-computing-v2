## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-04-20

function [] = plotSpline (nodes, nodesValues)
  points = min(nodes):0.01:max(nodes);
  pointsValues = splineNaturalInt(nodes, nodesValues, points);
  plot(
    nodes, nodesValues, 'x;Given nodes;',
    points, pointsValues, ';Spline graph;'
  );
endfunction

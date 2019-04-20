## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-04-20

# Lagrange interpolation using divided diffrences
function [pointsValues] = lagrangeIntDivDiff (nodes, nodesValues, points)
  nodesCount = length(nodes);
  for i=1:length(points)
    # sort by ai = |xi - x|
    point = points(i);
    a = abs(points - point * ones(size(points));
    [_, order] = sort(a);
    sortedPoints = points(order);
    # store only the current and previous columns, we don't need the rest of them
    diffs = zeros(nodesCount + 1, nodesCount + 1);
    poly = zeros(nodesCount + 1);
    # TODO finish this you have time
  endfor  
endfunction

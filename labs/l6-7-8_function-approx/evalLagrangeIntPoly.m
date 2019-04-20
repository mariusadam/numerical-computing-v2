## Author: marius <marius@mjolnir>
## Created: 2019-04-19

function pointValue = evalLagrangeIntPoly(nodes, point, i)
  pointValue = 1;
  for j=1:length(nodes);
    if (j ~= i)
      pointValue = pointValue * (point - nodes(j)) / (nodes(i) - nodes(j));
    endif
  endfor
endfunction

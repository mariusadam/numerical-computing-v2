## Author: marius <marius@mjolnir>
## Created: 2019-04-19

function val = evaluateFundamentalPolynomial(points, pointToApproximate, i)
  val = 1;
  for j=1:length(points);
    if (j ~= i)
      val = val * (pointToApproximate - points(j)) / (points(i) - points(j));
    endif
  endfor
endfunction

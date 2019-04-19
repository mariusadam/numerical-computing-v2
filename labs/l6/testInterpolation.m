## Author: marius <marius@mjolnir>
## Created: 2019-04-15

function [] = testInterpolation ()
  x = [0, pi / 2, pi, 3 * pi / 2, 2 * pi];
  f = [0, 1, 0, -1, 0];
  fp = [1, 0, -1, 0, 1];
  plot(x, f, 'o');
  hold on;
  xg = 0:0.01:2*pi+0.01;
  yg = sin(xg);
  plot(xg, yg, 'k');
  
  xl = xg;
  yl = lagrangeInterpolation(x, f, xl);
  plot(xl, yl, 'r');
  
  #xh = xg;
  #yg = hermiteInterpolation(x, f, fp, xh);
  #plot(xh, yh, 'b');
  
  x1 = lagrangeInterpolation(x, f, pi / 4)
endfunction

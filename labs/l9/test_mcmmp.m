## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-05-11

function [retval] = test_mcmmp ()
  x = 1:10;
  y = sin(x);
  xAprox = x(1):(x(length(x))-x(1))/100:x(length(x));
  phi = @(x)[ones(1, length(x)); x; x.^2; x.^3; x.^4; x.^5; x.^6];

  yAprox = mcmmp(x, y, phi, xAprox);

  plot(x, y, 'o', xAprox, yAprox, '-');
endfunction

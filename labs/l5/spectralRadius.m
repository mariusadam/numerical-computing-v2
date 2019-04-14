## Author: marius <marius@mjolnir>
## Created: 2019-04-14

# The spectral radius of a matrix is 
# the maximum of the modulus of its eigenvalues.
function [radius] = spectralRadius (A)
  radius = max(abs(eig(A)));
endfunction

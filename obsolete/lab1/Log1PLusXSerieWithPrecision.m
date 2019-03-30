## Copyright (C) 2019 marius
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} Log1PLusXSerieWithPrecision (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [numberOfTerms] = Log1PLusXSerieWithPrecision (x, precision)
  currentVal = 0;
  previousVal = 0;
  numberOfTerms = 0;
  xval = x;
  numarator = 1;
  sign = 1;
  isPrecisionReached = false;
  do
    numberOfTerms = numberOfTerms + 1;
    currentVal = currentVal + sign * (xval / numarator);
    sign = sign * -1;
    xval = xval * x;
    numarator = numarator + 1;
%    disp(currentVal);disp(previousVal);disp(currentVal-previousVal);disp("====");
    isPrecisionReached = abs(currentVal-previousVal) <= precision;
    previousVal = currentVal;
  until (isPrecisionReached)
endfunction

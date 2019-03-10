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
## @deftypefn {} {@var{retval} =} Log1PLusXSerie (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [retval] = Log1PLusXSerie (x, n)
  retval = 0;
  xval = x;
  numarator = 1;
  sign = 1;
  if (n <= 1)
    return;
  endif
  for i = 1:n - 1
    retval = retval + sign * (xval / numarator);
    sign = sign * -1;
    xval = xval * x;
    numarator = numarator + 1;
  endfor
endfunction

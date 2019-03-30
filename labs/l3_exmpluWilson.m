## Author: mariusadam 
## Created: 2019-03-24

function [retval] = exmpluWilson ()
  M=[10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10];
  y=[32 23 33 31]' ;  %' face transpusa matricei

  % rezolvam ec. M*x = y
  x = M\y;

  % punctul a)
  y1=[32.1 22.9 33.1 30.9]';

  x1=M\y1;

  fprintf('norm(x1-x)/norm(y1-y): %f\n',norm(x1-x)/norm(y1-y));

  fprintf('cond(M): %f\n', cond(M));

  % punctul b)
  M1 =[10 7 8.1 7.2;7.8 5.04 6 5;8 5.98 9.89 9;6.99 4.99 9 9.98];

  x2 = M1\y;

  fprintf('norm(x2-x)/norm(M1-M): %f\n',norm(x2-x)/norm(M1-M));
endfunction

## Author: marius <marius@mjolnir>
## Created: 2019-04-13

function [x] = l4_qrSolve(A, b)
%QRSolve - rezolvare sistem prin metoda QR

  [m,n]=size(A);
  u=zeros(m,n); %vectorii de reflexie
  %obtine R si Q^T*b
  for k=1:n
      x=A(k:m,k);
      x(1)=l4_sign(x(1))*norm(x)+x(1);
      u(k:m,k)=x/norm(x);
      A(k:m,k:n)=A(k:m,k:n)-2*u(k:m,k)*(u(k:m,k)'*A(k:m,k:n));
      b(k:m)=b(k:m)-2*u(k:m,k)*(u(k:m,k)'*b(k:m));
  end
  R=triu(A(1:n,:));
  x=R\b(1:n);
endfunction
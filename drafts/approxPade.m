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
## @deftypefn {} {@var{retval} =} approxPade (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: marius <marius@mjolnir>
## Created: 2019-03-04

function [ out ] = approxPade( fun,m,k )
syms x;
%luam functia din handle
f(x)=fun(x);
nr= m+k+5;
%luam coeficientii dezvolt taylor pt fct
s = sym2poly(taylor(f,x,'ExpansionPoint',0,'Order',nr+1));
%inversam lista coeficientilor
y=fliplr(s);
sz=size(y,2);
%construim vectorul cu coef
%consideram c[0]=c[1]
for i=1:nr
    if (sz>i)
        c(i)=y(i+1);
    else
        c(i)=0;
    end
end
if (m>k)
   
    %construim prima matrice
    lin =m-(k-1);
    %e=zeros(lin)
    aux=m;
    for i=1:lin
        mm=aux;
        for j=1:lin
            e(i,j)=c(mm);
            mm=mm-1;
        end
        aux=aux+1;
    end

    aux=m+1;
    %contruim a doua matrice
    %d=zeros(lin)
    for i=1:lin
        d(i)=-c(aux);
        aux=aux+1;
    end

    %il gasim pe b
    %for i=1:k
     %   b(i)=0;
    b=e\d';
    %il gasim p a
    f(0)
    a(1)=eval(f(0));
    for j=2:m
        a(j)=0;
        for l=1:j
            if (l==1)
                a(j)=a(j)+c(j-1);
            else
                if (l==j && l<=k)
                a(j)=a(j)+eval(f(0))*b(l-1);
                else
                    if (l<=k)
                    a(j)=a(j)+c(j-l)*b(l-1);
                    end
                end
            end
        end
    end

    %inversam vectorul ca sa il putem transforma in polinom
    bb=(fliplr(b))';
    aa= fliplr(a);
    %adaugam elementul liber
    bb(size(bb,2)+1)=1;
    %transf in polinom
    numarator(x)= poly2sym(bb);
    numitor(x)= poly2sym(aa);

    %returnam un handle
    out=@(x)numarator(x)\numitor(x);
else
    
    nn=m;
    m=k;
    k=m;
    
    %construim prima matrice
    lin =m-(k-1);
    %e=zeros(lin)
    aux=m;
    for i=1:lin
        mm=aux;
        for j=1:lin
            e(i,j)=c(mm);
            mm=mm-1;
        end
        aux=aux+1;
    end

    aux=m+1;
    %contruim a doua matrice
    %d=zeros(lin)
    for i=1:lin
        d(i)=-c(aux);
        aux=aux+1;
    end

    %il gasim pe b
    %for i=1:k
     %   b(i)=0;
    b=e\d';
    %il gasim p a
    a(1)=eval(f(0));
    for j=2:m
        a(j)=0;
        for l=1:j
            if (l==1)
                a(j)=a(j)+c(j-1);
            else
               if  ( l-1>size(b,2) )
                   a(j)=0;
               else
                if (l==j && l<=k )
                    a(j)=a(j)+eval(f(0))*b(l-1);
                    else
                        if (l<=k)
                        a(j)=a(j)+c(j-l)*b(l-1);
                        end
                end
               end
            end
        end
    end

    %inversam vectorul ca sa il putem transforma in polinom
    bb=(fliplr(b))';
    aa= fliplr(a);
    %adaugam elementul liber
    bb(size(bb,2)+1)=1;
    %transf in polinom
    numarator(x)= poly2sym(bb);
    numitor(x)= poly2sym(aa);

    %returnam un handle
    out=@(x)numitor(x)\numarator(x) ;   
end
end
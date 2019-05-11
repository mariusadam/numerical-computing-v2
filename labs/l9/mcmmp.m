## Author: mariusadam <mariusadam@EVO306>
## Created: 2019-05-11

function yAprox = mcmmp(x, y, phiF, xAprox)
% varianta generala a metodei celor mai mici patrate
% x, y -  datele de modelat: date experimentale sau functia de modelat discretizata
% phi - setul de functii baza , de fapt o functie vectoriala ex: @(x)[ones(1, length(x)); x; x.^2; x.^3]
% xaprox - setul de valori pe care calculam modelul, length(yaprox) == length(xaprox) 
% w = 1, fara pondere

	phi = phiF(x);
	phiAprox = phiF(xAprox);

	n = length(x);
	% n - numarul de puncte
	[n m] = size(phi);
	% m - numarul de functii 
	nAprox = length(xAprox);
	% N - numarul de puncte pe care se calculeaza aproximatia (modelul)
	
	
	%ecuatiile normale
    for i=1:n
        for j=1:n
            A(i,j)=phi(i,:)*transpose(phi(j,:));
        end
        B(i,1)=phi(i,:)*transpose(y);
    end
        
    %A*a=B
    a=A \ B;
    
    %pb de rez
    yAprox=zeros(1,nAprox);
    for i=1:n
        yAprox=yAprox+a(i)*phiAprox(i,:);
    end
	yAprox = transpose(a)*phiAprox;
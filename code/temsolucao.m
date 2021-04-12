%Esta fun��o testa a possibilidade de solu��o de um quebra cabe�as de
%oito pe�as usando o m�todo de invers�es. O metodo se resume em
%verificar o numero de invers�es da matriz inicial do jogo, e se esse
%n�mero for par o jogo ter� solu��o, caso contr�rio n�o ter�.

function [error] = temsolucao(m)
%m=[4 3 1; 9 2 5; 7 8 6]
%m=[4 1 3; 9 2 5; 7 8 6]

inv = 0;
m=m';
m=m(:);
m=m';

for i=9:-1:1
  for j=i-1:-1:1
     if m(i)<m(j)&&m(i)~=9&&m(j)~=9
      inv=inv+1;
     end
  end
end

if rem(inv, 2)==0
  error = 0;
else
  error = 1;
end
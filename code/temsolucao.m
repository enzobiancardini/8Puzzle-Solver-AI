%Esta função testa a possibilidade de solução de um quebra cabeças de
%oito peças usando o método de inversões. O metodo se resume em
%verificar o numero de inversões da matriz inicial do jogo, e se esse
%número for par o jogo terá solução, caso contrário não terá.

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
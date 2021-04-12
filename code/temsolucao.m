% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

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

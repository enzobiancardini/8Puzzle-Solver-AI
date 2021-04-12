% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

clear
clc

% Teste 1 %
assert(contagem(ones(10)) == 100);
fprintf('Teste 1: OK\n');

% Teste 2 %
assert(contagem([1 0 1; 1 0 1; 1 0 1]) == 6);
fprintf('Teste 2: OK\n');

% Teste 3 %
assert(contagem(eye(3)) == 3);
fprintf('Teste 3: OK\n');

% Teste 4 %
assert(contagem([1 1 1; 1 0 1; 1 0 1]) == 7);
fprintf('Teste 4: OK\n');

% Teste 5 %
assert(contagem([0 1 0; 0 0 1; 0 0 1]) == 3);
fprintf('Teste 5: OK\n');


fprintf('Sua implementação está correta!\n');

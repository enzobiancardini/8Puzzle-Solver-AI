% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Intelig√™ncia Artificial - 2016/2
%
% Script Octave/MATLAB que deve ser utilizado para testar a implementa√ß√£o das
% tarefas extras do exerc√≠cio.
% Este arquivo n√£o deve ser alterado
%
% author: raonifst at gmail dot com

clear
clc

% Utilizado para comparar objetos - NAO APAGUE! %  
global id;
id = intmin;
% %

tic
% Teste 1
M = [4 3 1; 9 2 5; 7 8 6];
[~, error] = astar(M, @manhattan);
assert(error == 1);
fprintf('Teste 1: OK\n');
toc

% Teste 2
M = [9 1 3; 2 4 5; 7 8 6];
[~, error] = astar(M, @manhattan);
assert(error == 1);
fprintf('\nTeste 2: OK\n');
toc

% Teste 3
M = [4 9 5; 3 8 6; 1 7 2];
[~, error] = astar(M, @manhattan);
assert(error == 1);
fprintf('\nTeste 3: OK\n');
toc

% Teste 4
M = [5 3 2; 7 6 4; 8 1 9];
m = astar(M, @manhattan);
assert(m.eq(Node([1 2 3; 4 5 6; 7 8 9], 0)));
fprintf('\nTeste 4: OK\n');
toc

% Teste 5
M = [4 6 7; 9 5 8; 2 1 3];
m = astar(M, @manhattan);
assert(m.eq(Node([1 2 3; 4 5 6; 7 8 9], 0)));
fprintf('\nTeste 5: OK\n');
toc

fprintf('\nSua implementaÁ„o est· correta.\n');

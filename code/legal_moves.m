% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

function [ moves ] = legal_moves( State )

	blank_value = 9;
	adj = [0 1 0; 1 0 1; 0 1 0]; % define adjacency.

	mask = conv2(double(State==blank_value), adj, 'same')>0; % pixels adjacent to those equal to `blank_value`
	moves = unique(State(mask));

end

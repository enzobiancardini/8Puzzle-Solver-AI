% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

function [ nM ] = do_move( M, p_value )

	blank_value = 9;
	p = find(M == p_value);
	blank_p = find(M == blank_value);

	nM = M;
	nM(p) = M(blank_p);
	nM(blank_p) = M(p);


end

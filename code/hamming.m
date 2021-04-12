% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

function [ dist ] = hamming( State )

	S = State';
	H = S(:) ~= [1:9]';

	dist = sum(H(:)) ;

	if dist > 1,
		dist = dist - 1;
	end

end

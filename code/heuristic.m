% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% InteligĂȘncia Artificial - 2019/1

function [ dist ] = heuristic( S )

 dist = 0;
 for i=1:length(S)
        if i~=S(i)
            dist++;
        end
    end
end

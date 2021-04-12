% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

function reconstruct_path( node )

    if ~isempty(node),
        if isempty(node.Prev),
            show(node.State);
        else
            reconstruct_path(node.Prev);
            show(node.State);
        end
    end
end

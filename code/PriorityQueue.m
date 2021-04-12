% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

classdef PriorityQueue
    properties
        T
    end

    methods
        function this = PriorityQueue()
            this.T = RedBlackTree();
        end

        function insert(this, priority, node)
            this.T.Insert(priority, node);
        end

        function node = extractMin(this)
            elem = this.T.Minimum();
            node = elem.value;
            this.T.Delete(elem);

        end

        function bool = isempty(this)
            bool = this.T.IsEmpty() ;
        end
    end

end

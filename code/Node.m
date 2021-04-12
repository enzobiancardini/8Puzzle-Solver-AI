% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

classdef Node < handle

    properties (GetAccess = public, SetAccess = public)
        State;
        f = 0;
        Prev ;
    end

    methods

        function self = Node(M, g)

            self.State = M;
            self.f = g;

        end

        function[out] = get.State(self)
            out = self.State;
        end

        function[out] = get.Prev(self)
            out = self.Prev;
        end

        function[out] = get.f(self)
            out = self.f;
        end

        function[out] = eq(obj,obj2)
            if length(obj2) > 1
               throw(MException('Node:eqMultiple','??? Cannot compare to multiple elements at once.'))
            end
            out = strcmp(class(obj),class(obj2)) &&  sum(sum(obj.State == obj2.State)) == 9;   % obj2 must be of the same class
        end


        function[out] = gt(obj,obj2)
            if length(obj2) > 1
               throw(MException('Node:gtMultiple','??? Cannot compare to multiple elements at once.'))
            end
            global option;

            if option == 1,
              out = isa(obj2,'Node') && obj.f + hamming(obj.State) < obj2.f+hamming(obj2.State);
            else
                out = isa(obj2,'Node') && obj.f + manhattan(obj.State) < obj2.f+manhattan(obj2.State);
            end
        end

    end

end

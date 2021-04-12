classdef RBTElement < handle

	properties (Access = public)
		key;            % key
        id;
        left = nan;       % left child
        right = nan;    % right child
        p = nan;        % parent
        color = false;  % color (true = red,false = black)
        size = 0;       % size of subtree rooted at this element
        value = [];     % miscellaneous data
    end

	methods (Access = public)
		function this = RBTElement(key,value)

          global id;
            this.key = key;
            this.id = id;
            id = id + 1;
            % Set value data, if specified
            if (nargin == 2)
                this.value = value;
            end
        end

        function bool = isnan(this)
            bool = isnan(this.key);
        end


        function[bool] = eq(this, obj)
            bool = this.id == obj.id;
        end

        function[bool] = ne(this, obj)
            bool = this.id ~= obj.id;
        end
    end


end

% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

function dist = manhattan(State)
  O = [1,2,3;4,5,6;7,8,9];
  dist = 0;

  for i=1:8
		[Ol,Oc] = find(O==i);
    [Sl,Sc] = find(State==i);
    dist += abs(Ol-Sl) + abs(Oc-Sc);
	end
end

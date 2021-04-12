% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

function [n, error] = astar(M, h)

	%Cria uma fila de prioridades vazia
	q = PriorityQueue() ;

	% Estado objetivo
	O = [1 2 3; 4 5 6; 7 8 9]; %Lembre-se de que seu programa deve para quando um estado objetivo for alcançado.

	% Cria um novo nó __n__ com estado igual a matriz __M__ (estado inicial) e
	% custo 0 (zero).
 	n = Node(M, 0);

	% Insere o nó __n__ na fila de prioridades __q__. O custo deste nó
	% é igual a n.f+g(n.State). __g__ é um apontador para função heurística
	% considerada
	q.insert(n.f+hamming(n.State), n);

	% Laço principal do algoritmo A-estrela - é interrompido quando a fila ficar vazia
	error=temsolucao(M);
  if error==0

    while (~q.isempty())

        % Remove um nó m com a menor prioridade na fila q
        m = q.extractMin();
          if isequal(O,m.State)
            n = m;
            break;

          else
                lm = legal_moves(m.State);

                  for i=1:size(lm, 1)
                    prox = do_move(m.State,lm(i));
                    if isempty(m.Prev)
                      n = Node(prox,m.f+1);
                      n.Prev = m;
                      q.insert(n.f+h(n.State),n);
                    else
                      if ~isequal(m.Prev.State,prox)
                          n = Node(prox,m.f+1);
                          n.Prev = m;
                          q.insert(n.f+h(n.State),n);
                      end
                    end
                  end
          end
    end
end

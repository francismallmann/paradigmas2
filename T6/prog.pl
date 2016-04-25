repete(0, _, []).
   repete(N, C, L) :- 
    N > 0,
    L = [C | T],
    N1 is N - 1,
    repete(N1, C, T).


%3 ?- repete(1,a,L).
%L = [a] .

%4 ?- repete(2,b,L).
%L = [b, b] .

%5 ?- repete(-2,b,L).
%false.

%6 ?- repete(2,a,[a,b,c]).
%false.

%7 ?- repete(3,a,[a|T]).
%T = [a, a] .


%Defina um predicado zeroInit(L) que é verdadeiro se L for uma lista que inicia com o número 0 (zero). Exemplo de uso:
zeroInit([H | _]) :-
	H =:= 0.

%Defina um predicado has5(L) que é verdadeiro se L for uma lista de 5 elementos. Resolva este exercício sem usar um predicado auxiliar.
has5(L) :- L = ([_,_,_,_,_]).

%Defina um predicado hasN(L,N) que é verdadeiro se L for uma lista de N elementos.
hasN(L, N) :- length(L, A), N =:= A.




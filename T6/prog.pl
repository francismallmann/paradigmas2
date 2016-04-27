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


%Defina um predicado potN0(N,L), de forma que L seja uma lista de potências de 2, com expoentes de N a 0. Exemplo de uso:
potN0(0, [1]).
potN0(N, L) :- 
	N > 0,
	I is 2^N,
	N1 is N-1,
	L = [I|T],
	potN0(N1, T).



%Defina um predicado zipmult(L1,L2,L3), de forma que cada elemento da lista L3 seja o produto dos elementos de L1 e L2 na mesma posição do elemento de L3. Exemplo:
zipmult([], [], []).
zipmult([H|T], [H1|T1], [H2|T2]) :- 
	H2 is H*H1, 
	zipmult(T, T1, T2).



%Defina um predicado potencias(N,L), de forma que L seja uma lista com as N primeiras potências de 2, sendo a primeira 2^0 e assim por diante, conforme o exemplo abaixo:
potencias(N, L) :- S is 0, 
	Aux(S, N, L).

Aux(_, 0 , []).
Aux(N, M, [H|T]) :- 
	H is 2^N, 
	N1 is N+1, 
	M1 is M-1, 
	Aux(N1, M1, T).



%Defina um predicado positivos(L1,L2), de forma que L2 seja uma lista só com os elementos positivos de L1, conforme o exemplo abaixo:
positivos([], []).
	positivos([H1|T1], [H2|T2]) :- 
	H1 > 0, 
	H2 is H1, 
	positivos(T1, T2).
positivos([H1|T1], L) :- 
	H1 =< 0, 
	positivos(T1, L).




%Considere que L1 e L2 sejam permutações de uma lista de elementos distintos, sem repetições. Sabendo disso, defina um predicado mesmaPosicao(A,L1,L2) para verificar se um elemento A está na mesma posição nas listas L1 e L2. Exemplo de uso:
mesmaPosicao(H, [H|_], [H|_]).
mesmaPosicao(A, [_|T], [_|T1]) :- 
	mesmaPosicao(A, T, T1).





%Dada uma lista de N alunos, deseja-se escolher NP alunos (NP < N) para formar uma comissão. Para isso, defina um predicado comissao(NP,LP,C), que permita gerar as possíveis combinações C com NP elementos da lista LP. Exemplo:




%(Adaptado de OBI2006-F1N1) Tem-se N azulejos 10cm x 10cm e, com eles, deve-se montar um conjunto de quadrados de modo a utilizar todos os azulejos dados, sem sobrepô-los. Inicialmente, deve-se montar o maior quadrado possível; então, com os azulejos que sobraram, deve-se montar o maior quadrado possível, e assim sucessivamente. Por exemplo, se forem dados 31 azulejos, o conjunto montado terá 4 quadrados. Para resolver este problema, você deverá definir um predicado azulejos(NA, NQ), de forma que NQ seja o número de quadrados que se deve montar com NA azulejos. Dica: use os predicados sqrt e floor, pré-definidos em Prolog.
azulejos(0, 0).
azulejos(NA, NQ) :- 
	X is floor(sqrt(NA)),
	N1 is NA - X * X,
	azulejos(N1, NQ1),	NQ is NQ1 + 1.


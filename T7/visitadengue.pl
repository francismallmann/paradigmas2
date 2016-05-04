/* %inspirado no slide de prolog do problema das 5 casas

%A casa F deve ser uma das tres primeiras a serem visitadas.*/

condicao1(C) :- C = [f,_,_,_,_,_,_].
condicao1(C) :- C = [_,f,_,_,_,_,_].
condicao1(C) :- C = [_,_,f,_,_,_,_].

/*%A casa H deve ser visitada imediatamente antes da casa G.*/

condicao2(C) :- C = [h,g,_,_,_,_,_].
condicao2(C) :- C = [_,h,g,_,_,_,_].
condicao2(C) :- C = [_,_,h,g,_,_,_].
condicao2(C) :- C = [_,_,_,h,g,_,_].
condicao2(C) :- C = [_,_,_,_,h,g,_].
condicao2(C) :- C = [_,_,_,_,_,h,g].

/*%A casa L nao pode ser a primeira nem a setima casa a ser visitada */

condicao3(C) :- C = [_,l,_,_,_,_,_].
condicao3(C) :- C = [_,_,l,_,_,_,_].
condicao3(C) :- C = [_,_,_,l,_,_,_].
condicao3(C) :- C = [_,_,_,_,l,_,_].
condicao3(C) :- C = [_,_,_,_,_,l,_].

/*%A casa M deve ser a primeira ou a setima a ser visitada*/

condicao4(C) :- C = [m,_,_,_,_,_,_].
condicao4(C) :- C = [_,_,_,_,_,_,m].

/*%A casa P deve ser uma das tres ultimas a serem visitadas.*/

condicao5(C) :- C = [_,_,_,_,p,_,_].
condicao5(C) :- C = [_,_,_,_,_,p,_].
condicao5(C) :- C = [_,_,_,_,_,_,p].


/*% permutacoes - retirada do estacionamento, mas pode-se utilizar o "permutation" que parece fazer o mesmo http://www.swi-prolog.org/pldoc/man?predicate=permutation/2*/

perm(List, [H|Perm]) :- delete(H, List, Rest), perm(Rest, Perm).
perm([],[]).
   
delete(X, [X|T], T).
delete(X, [H|T], [H|NT]) :- delete(X, T, NT).


/*%execucao da visitacao*/
visitacao(C) :- C = [_,_,_,_,_,_,_],
					Casas = [f,g,h,l,m,p,t],
					perm(Casas, C),
						condicao1(C),
						condicao2(C),
						condicao3(C),
						condicao4(C),
						condicao5(C).


/*
Questão 1. Qual das seguintes opções é uma lista
completa e correta da ordem que as sete casas devem
ser visitadas?

(B) H, G, F, L, T, P e M.

?- visitacao([f,t,h,l,p,g,m]). false.  
?- visitacao([h,g,f,l,t,p,m]). true .  
?- visitacao([l,t,f,h,g,m,p]). false.  
?- visitacao([m,f,d,h,l,g,t]). false.  
?- visitacao([m,l,h,g,f,p,t]). false.

Questao 2. Se em um trecho do percurso visitarmos
as casas T, L e F, exatamente nesta ordem, qual a
posiição que G foi visitada?

(D) Quinta.

?- visitacao([t,l,f,g,_,_,_]).
false.

?- visitacao([t,l,f,_,g,_,_]).
true .

?- visitacao([g,t,l,f,_,_,_]).
false.

?- visitacao([_,t,l,f,g,_,_]).
false.

?- visitacao([_,t,l,f,_,_,g]).
false.

?- visitacao([_,g,_,_,t,l,f]).
false.

?- visitacao([_,_,_,g,t,l,f]).
false.

?- visitacao([g,_,_,_,t,l,f]).
false.

Questão 3. Se a casa H é a primeira a ser visitada,
qual a quarta casa a ser visitada?

(C) L.

?- visitacao([h,_,_,f,_,_,_]).
false.

?- visitacao([h,_,_,g,_,_,_]).
false.

?- visitacao([h,_,_,l,_,_,_]).
true .

?- visitacao([h,_,_,m,_,_,_]).
false.

?- visitacao([h,_,_,p,_,_,_]).
false.

Questão 4. Se a casa P foi visitada em sexto, a casa
H poderia ser visitada em várias posições exceto:

(E) Quinta.


?- visitacao([h,_,_,_,_,p,_]).
true .

?- visitacao([_,h,_,_,_,p,_]).
true .

?- visitacao([_,_,h,_,_,p,_]).
true .

?- visitacao([_,_,_,h,_,p,_]).
true .

?- visitacao([_,_,_,_,h,p,_]).
false.

Questão 5. Se exatamente uma casa foi visitada entre
F e P, quais possíveis casas são estas?

(E) L e T.

?- visitacao([_,_,f,A,B,p,_]).
A = l,
B = t .

*/




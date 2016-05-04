



/*o onibus A deve partir as 6:00*/

condicao1(O) :- O = [a,_,_,_,_,_,_].

/*o onibus E deve partir apos o onibus C e tambem
apos o onibus B*/

condicao2(O) :- O = [_,b,c,e,_,_,_].
condicao2(O) :- O = [_,_,b,c,e,_,_].
condicao2(O) :- O = [_,_,_,b,c,e,_].
condicao2(O) :- O = [_,_,_,_,b,c,e].
condicao2(O) :- O = [_,c,b,e,_,_,_].
condicao2(O) :- O = [_,_,c,b,e,_,_].
condicao2(O) :- O = [_,_,_,c,b,e,_].
condicao2(O) :- O = [_,_,_,_,c,b,e].
condicao2(O) :- O = [_,b,c,_,e,_,_].
condicao2(O) :- O = [_,b,c,_,_,e,_].
condicao2(O) :- O = [_,b,c,_,_,_,e].
condicao2(O) :- O = [_,c,b,_,e,_,_].
condicao2(O) :- O = [_,c,b,_,_,e,_].
condicao2(O) :- O = [_,c,b,_,_,_,e].
condicao2(O) :- O = [_,_,b,c,_,e,_].
condicao2(O) :- O = [_,_,b,c,_,_,e].
condicao2(O) :- O = [_,_,c,b,_,e,_].
condicao2(O) :- O = [_,_,c,b,_,_,e].
condicao2(O) :- O = [_,_,_,b,c,_,e].
condicao2(O) :- O = [_,_,_,c,b,_,e].


/*os onibus D, F e G devem partir em horarios consecutivos, nessa ordem.*/

condicao3(O) :- O = [_,d,f,g,_,_,_].
condicao3(O) :- O = [_,_,d,f,g,_,_].
condicao3(O) :- O = [_,_,_,d,f,g,_].
condicao3(O) :- O = [_,_,_,_,d,f,g].


/*% permutacoes - retirada do estacionamento, mas pode-se utilizar o "permutation" que parece fazer o mesmo http://www.swi-prolog.org/pldoc/man?predicate=permutation/2*/

perm(List, [H|Perm]) :- delete(H, List, Rest), perm(Rest, Perm).
perm([],[]).
   
delete(X, [X|T], T).
delete(X, [H|T], [H|NT]) :- delete(X, T, NT).


/*%saida de onibus*/
saida(O) :- O = [_,_,_,_,_,_,_],
					Onibus = [a,b,c,d,e,f,g],
					perm(Onibus, O),
						condicao1(O),
						condicao2(O),
						condicao3(O).



/*Questao 1. Se o ˆonibus G for escalado para partir as 9:00, o onibus E deve ser escalado para partir as
 
(E) 12:00

?- saida([_,_,_,g,e,_,_]).
false.

?- saida([_,_,_,g,_,e,_]).
false.

?- saida([_,_,_,g,_,_,e]).
true .

Questao 2. Se os onibus C e D forem escalados para partir as 8:00 e 9:00, respectivamente, o onibus B deve ser escalado para partir as
 
(B) 7:00 


?- saida([_,b,c,d,_,_,_]).
true .

?- saida([_,_,c,d,b,_,_]).
false.

?- saida([_,_,c,d,_,b,_]).
false.

?- saida([_,_,c,d,_,_,b]).
false.




Quest ̃ao 3. Qual das seguintes alternativas lista trˆes ˆonibus que podem ser escalados para partir na ordem
dada, em hor ́arios consecutivos?

(D) F,G,C


?- saida([_,_,b,c,f,_,_]).
false.

?- saida([_,_,_,b,c,f,_]).
false.

?- saida([_,_,_,_,b,c,f]).
false.

?- saida([_,d,e,f,_,_,_]).
false.

?- saida([_,_,d,e,f,_,_]).
false.

?- saida([_,_,_,d,e,f,_]).
false.

?- saida([_,_,_,_,d,e,f]).
false.

?- saida([_,f,g,c,_,_,_]).
false.

?- saida([_,_,f,g,c,_,_]).
true .

?- saida([_,_,_,f,g,c,_]).
false.



Questao 4. Se o onibus F for escalado para partir as 11:00, o onibus E deve ser escalado para partir as
 
(C) 9:00 


?- saida([_,e,_,_,_,f,_]).
false.

?- saida([_,_,e,_,_,f,_]).
false.

?- saida([_,_,_,e,_,f,_]).
true .

?- saida([_,_,_,_,e,f,_]).
false.

?- saida([_,_,_,_,_,f,e]).
false.




Questao 5. Qual das seguintes afirmacoes  e necessariamente verdadeira?

(E) O onibus G esta escalado para partir apos o onibus F.


Escolha pelo somatorio de True


?- saida([_,b,c,_,_,_,_]).
true 
true 
false.

?- saida([_,_,b,c,_,_,_]).
false.

?- saida([_,_,_,b,c,_,_]).
false.

?- saida([_,_,_,_,b,c,_]).
true 
false.

?- saida([_,_,_,_,_,b,c]).
false.

?- saida([_,c,d,_,_,_,_]).
false.

?- saida([_,_,c,d,_,_,_]).
true 
false.

?- saida([_,_,_,c,d,_,_]).
false.

?- saida([_,_,_,_,c,d,_]).
false.

?- saida([_,_,_,_,_,c,d]).
false.

?- saida([_,d,e,_,_,_,_]).
false.

?- saida([_,_,d,e,_,_,_]).
false.

?- saida([_,_,_,d,e,_,_]).
false.

?- saida([_,_,_,_,d,e,_]).
false.

?- saida([_,_,_,_,_,d,e]).
false.

?- saida([_,e,f,_,_,_,_]).
false.

?- saida([_,_,e,f,_,_,_]).
false.

?- saida([_,_,_,e,f,_,_]).
false.

?- saida([_,_,_,_,e,f,_]).
false.

?- saida([_,_,_,_,_,e,f]).
false.

?- saida([_,f,g,_,_,_,_]).
false.

?- saida([_,_,f,g,_,_,_]).
true 
true 
false.

?- saida([_,_,_,f,g,_,_]).
false.

?- saida([_,_,_,_,f,g,_]).
true 
true 
false.

?- saida([_,_,_,_,_,f,g]).
true 
true 
false.




Questao 6. Qual  e o horario mais tardio para o qual o onibus B pode ser escalado para partir?
 
(E) 11:00

?- saida([_,b,_,_,_,_,_]).
true .

?- saida([_,_,b,_,_,_,_]).
true .

?- saida([_,_,_,b,_,_,_]).
false.

?- saida([_,_,_,_,b,_,_]).
true .

?- saida([_,_,_,_,_,b,_]).
true .

?- saida([_,_,_,_,_,_,b]).
false.








*/

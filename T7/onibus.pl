

condicao1(O) :- O = [a,_,_,_,_,_,_].

condicao2(O) :- O = [_,b,c,e,_,_,_].
condicao2(O) :- O = [_,_,b,c,e,_,_].
condicao2(O) :- O = [_,_,_,b,c,e,_].
condicao2(O) :- O = [_,_,_,_,b,c,e].

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
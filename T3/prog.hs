--Nome: Francis Mallmann Schappo
--Matricula: 201021524

--Defina uma função recursiva que receba uma lista de números inteiros e produza uma nova lista com cada número elevado ao quadrado.

eleva :: [Int] -> [Int]
eleva [] = []
eleva x = (head x)^2 : eleva (tail x)


--Escreva uma função recursiva que receba uma lista de nomes e adicione a string "Sr. " no início de cada nome.

addSr :: [String] -> [String]
addSr [] = []
addSr x = ("Sr. " ++ (head x)) : addSr (tail x)

--Crie uma função recursiva que receba uma string e retorne o número de espaços nela contidos.

espacos :: String -> Int
espacos [] = 0
espacos x = if (head x) == ' '
	then 1+espacos (tail x)
    else espacos (tail x)


--Escreva uma função recursiva que, dada uma lista de números, calcule 3*n^2 + 2/n + 1 para cada número n da lista.
calcisso :: [Float] -> [Float]
calcisso [] = []
calcisso x = (\x -> 3 * x ^ 2 + 2 / x + 1)(head x) : calcisso (tail x)





--Escreva uma função recursiva que, dada uma lista de números, selecione somente os que forem negativos.
sonegativo :: [Integer] -> [Integer]
sonegativo [] = []
sonegativo x = if (head x) < 0
	then head x : sonegativo (tail x)
	else sonegativo (tail x)




--Defina uma função não-recursiva que receba uma string e retire suas vogais, conforme os exemplos abaixo.


--Expresse uma solução recursiva para o exercício anterior.


--Defina uma função não-recursiva que receba uma string, possivelmente contendo espaços, e que retorne outra string substituindo os demais caracteres por '-', mas mantendo os espaços. Exemplos:


--Defina uma função recursiva que resolva o mesmo problema do exercício anterior.


--Crie uma função recursiva charFound :: Char -> String -> Bool, que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:



--Defina uma função recursiva que receba uma lista de coordenadas de pontos 2D e desloque esses pontos em 2 unidades, conforme o exemplo abaixo:


--Defina uma função recursiva que receba 2 listas e retorne uma lista contendo o produto, par a par, dos elementos das listas de entrada. Exemplos:



--Resolva o exercício anterior usando uma função de alta ordem, eliminando a necessidade de escrever código com recursão.


--Defina uma função recursiva que receba um número n e retorne uma tabela de números de 1 a n e seus quadrados, conforme os exemplos abaixo:

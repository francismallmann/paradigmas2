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
semVogais :: String -> String
semVogais [] = []
semVogais x = [n | n <- x, not (n `elem` "aeiou")]



--Expresse uma solução recursiva para o exercício anterior.
semVogaisr :: String -> String
semVogaisr [] = []
semVogaisr (x:xs)
		| x `elem` "aeiou" = semVogaisr xs
		| otherwise = x : semVogaisr xs


--Defina uma função não-recursiva que receba uma string, possivelmente contendo espaços, e que retorne outra string substituindo os demais caracteres por '-', mas mantendo os espaços. Exemplos:
codifica :: String -> String
codifica [] = []
codifica x = map (\n -> if (n == ' ') then ' ' else '-') x



--Defina uma função recursiva que resolva o mesmo problema do exercício anterior.
codificar :: String -> String
codificar [] = []
codificar (x:xs)
		| x /= ' ' = '-' : codificar xs
		| otherwise = ' ' : codificar xs

--Crie uma função recursiva charFound :: Char -> String -> Bool, que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:
charFound :: Char -> String -> Bool
charFound x y 
		| y == [] = False
		| x == head y = True
		| x /= head y = charFound x (tail y) 


--Defina uma função recursiva que receba uma lista de coordenadas de pontos 2D e desloque esses pontos em 2 unidades, conforme o exemplo abaixo:
translate :: [(Float, Float)] -> [(Float, Float)]
translate [] = []
translate (x:xs) = (fst x + 2, snd x + 2) : translate xs



--Defina uma função recursiva que receba 2 listas e retorne uma lista contendo o produto, par a par, dos elementos das listas de entrada. Exemplos:
prodVet :: [Int] -> [Int] -> [Int]
prodVet [] _ = []
prodVet (x:xs) (y:ys) = x * y : prodVet xs ys




--Resolva o exercício anterior usando uma função de alta ordem, eliminando a necessidade de escrever código com recursão.
prodVeta :: [Int] -> [Int] -> [Int]
prodVeta [] _ = []
prodVeta x y = zipWith (*) x y



--Defina uma função recursiva que receba um número n e retorne uma tabela de números de 1 a n e seus quadrados, conforme os exemplos abaixo:

geraTabela :: Int -> [(Int, Int)]
geraTabela 0 = []
geraTabela x = (x, x^2) : geraTabela (x-1)


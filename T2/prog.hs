--Nome: Francis Mallmann Schappo
--Matricula: 201021524

-- Eleva um numero ao quadrado (isto eh um comentario!)
doubleMe :: Int -> Int
doubleMe x = x^2

-- Verifica se um numero eh par (usa if/then/else para expressar funcao condicional)
-- mod: retorna resto da divisao inteira
isEven :: Int -> Bool
isEven n = if mod n 2 == 0 then True else False

-- Gera um numero a partir de um caracter (usa outra estrutura condicional em Haskell)
encodeMe :: Char -> Int
encodeMe c 
 | c == 'S'  = 0
 | c == 'N'  = 1
 | otherwise = 2

-- Calcula o quadrado do primeiro elemento da lista
-- Note que '[Int]' designa uma lista de elementos do tipo Int 
doubleFirst :: [Int] -> Int
doubleFirst lis = (head lis)^2

--Exercicios
--1)Crie uma função somaQuad :: Int -> Int -> Int que calcule a soma dos quadrados de dois números x e y.

somaQuad :: Int -> Int -> Int
somaQuad x y = (x^2) + (y^2)

--2)Crie uma função hasEqHeads :: [Int] -> [Int] -> Bool que verifique se 2 listas possuem o mesmo primeiro elemento. Use o operador lógico '==' para verificar igualdade.

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = if (head x) == (head y) then True else False

--3)Escreva uma função que receba uma lista de nomes e adicione a string "Sr. " no início de cada nome. 

addSr :: [String] -> [String]
addSr [] = []
addSr x = ("Sr. " ++ (head x)) : addSr (tail x)

--4)Crie uma função que receba uma string e retorne o número de espaços nela contidos. Dica: aplique 2 funções consecutivamente.
qtdBranco :: String -> Int
qtdBranco [] = 0
qtdBranco x = length (filter(==' ')x)

--5)Escreva uma função que, dada uma lista de números, calcule 3*n^2 + 2/n + 1 para cada número n da lista. Dica: defina uma função anônima.
anoniCalc :: [Float] -> [Float]
anoniCalc [] = []
anoniCalc x = map (\x -> 3*(x^2) + (2/x) +1) x

--6)Escreva uma função que, dada uma lista de números, selecione somente os que forem negativos.
negative :: [Int] -> [Int]
negative [] = []
negative x = filter (<0) x

--7)Escreva uma função que receba uma lista de números e retorne somente os que estiverem entre 1 e 100, inclusive. Dica 1: use uma função anônima. Dica 2: use o operador '&&' para expressar um 'E' lógico.

entreCem :: [Int] -> [Int]
entreCem [] = []
entreCem x = filter (\x -> x>=1 && x<=100) x

--8)Escreva uma função que, dada uma lista de idades de pessoas no ano atual, retorne uma lista somente com as idades de quem nasceu depois de 1970. Para testar a condição, sua função deverá subtrair a idade do ano atual.

idade :: [Int] -> [Int]
idade [] = []
idade x = filter (\x -> 2016 - x > 1970) x


--9)Escreva uma função que receba uma lista de números e retorne somente aqueles que forem pares.
ehpar :: [Int] -> [Int]
ehpar [] = []
ehpar x = filter (\x -> mod x 2 == 0) x



--10)Crie uma função charFound :: Char -> String -> Bool que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:
charFound :: Char -> String -> Bool
charFound x y 
		| y == [] = False
		| x == head y = True
		| x /= head y = charFound x (tail y)


--11)A função takeWhile :: (a -> Bool) -> [a] -> [a] é uma função de alta ordem. Ela recebe uma função condicional e uma lista, retornando o "menor prefixo" (isto é, porção inicial) da lista que satisfaça a condição dada. Teste os exemplos abaixo no GHCi e depois crie um novo exemplo:

--Prelude> takeWhile (<5) [1,2,3,4,5]
--[1,2,3,4]
--Prelude> takeWhile (/=' ') "Fulana de Tal"
--"Fulana"
--Prelude> takeWhile (\x -> 6*x < 100) [1..20]
--[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]



--12)Crie uma função que receba uma lista de nomes e retorne outra lista com somente aqueles nomes que terminarem com a letra 'a'.  
terminaA :: [String] -> [String]
terminaA x = filter(\x -> last x == 'a') x
